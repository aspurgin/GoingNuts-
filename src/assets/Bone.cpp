#include "Bone.hpp"

float Bone::noWeight = 0.f;

namespace boneHelpers{
	inline float getMix(double start, double end, double goal){
		if(goal <= start) {
			return 0.f;	
		} else if(goal >= end){
			return 1.f;	
		} else {
			return (float)(goal - start) / (end - start);
		}
	}
}

Bone::Bone(aiNode* root, aiBone* bone, aiNodeAnim* anim){
	parent = (Bone*)0;

	for(int w = 0; w < bone->mNumWeights; w++){
		weight[bone->mWeights[w].mVertexId] = bone->mWeights[w].mWeight;
	}

	aiMatrix4x4 mat = bone->mOffsetMatrix;

	offsetTransform = glm::mat4(mat.a1, mat.b1, mat.c1, mat.d1,
				 			    mat.a2, mat.b2, mat.c2, mat.d2,
				 			    mat.a3, mat.b3, mat.c3, mat.d3,
	   			 			    mat.a4, mat.b4, mat.c4, mat.d4);


	aiMatrix4x4 rtTrans = root->mTransformation;
	rootTransform = glm::mat4(rtTrans.a1, rtTrans.a2, rtTrans.a3, rtTrans.a4,
				 			    rtTrans.b1, rtTrans.b2, rtTrans.b3, rtTrans.b4,
				 			    rtTrans.c1, rtTrans.c2, rtTrans.c3, rtTrans.c4,
	   			 			    rtTrans.d1, rtTrans.d2, rtTrans.d3, rtTrans.d4);
	rootTransform = glm::inverse(rootTransform);

	DEBUG(bone->mName.C_Str());
	if(anim != 0){	
		DEBUG("\tANIMATED");
		for(int p=0; p<anim->mNumPositionKeys; p++){
			aiVectorKey k = anim->mPositionKeys[p];
			pos[k.mTime] = glm::vec3(k.mValue.x, k.mValue.y, k.mValue.z);
		}

		for(int s=0; s<anim->mNumScalingKeys; s++){
			aiVectorKey k = anim->mScalingKeys[s];
			scale[k.mTime] = glm::vec3(k.mValue.x, k.mValue.y, k.mValue.z);
		}

		for(int r=0; r<anim->mNumRotationKeys; r++){
			aiQuatKey k = anim->mRotationKeys[r];
			rot[k.mTime] = glm::quat(k.mValue.w, k.mValue.x, k.mValue.y, k.mValue.z);
		}
	} else {
		DEBUG("\tNOT_ANIMATED");
	}
}

glm::mat4 Bone::getCompleteTransform(){
	return rootTransform * getTotalTransform() * offsetTransform;
}

glm::mat4 Bone::getTotalTransform(){
	if(parent){
		return parent->getTotalTransform() * currentTransform;
	} else {
		return currentTransform;
	}
}

glm::mat4 Bone::getTransform(){
	return currentTransform;
}

void Bone::setParent(Bone* p){
	parent = p;
}

void Bone::setAt(double frame){
	std::map<double, glm::vec3>::iterator posIter;
	std::map<double, glm::vec3>::iterator scaleIter;
	std::map<double, glm::quat>::iterator rotIter;

	double p1 = 0, p2 = 0;
	glm::vec3 leftPosFrame = glm::vec3(0);
	glm::vec3 rightPosFrame = glm::vec3(0);
	glm::vec3 endPos;

	if(pos.size() == 0){
		TRACE("no pos info, using default <0,0,0>");
		endPos = glm::vec3(0,0,0);
	} else {
		for(posIter = pos.begin(); posIter != pos.end(); posIter++){
			TRACE("pos iter at: " << posIter->first << ",\t" << posIter->second.x << ", " << posIter->second.y << ", " << posIter->second.z);
			if(posIter->first <= frame || p1 == 0 && p2 == 0) {
				p1 = p2 = posIter->first;
				leftPosFrame = rightPosFrame = posIter->second;
			} else if (posIter->first > frame){
				p2 = posIter->first;
				rightPosFrame = posIter->second;
				break;
			}
		}
		endPos = glm::mix(leftPosFrame, rightPosFrame, boneHelpers::getMix(p1, p2, frame));
	}
	TRACE("pos framed between: " << p1 << " - " << p2);
	TRACE("    with transformation: " << endPos.x << ", " << endPos.y << ", " << endPos.z);


	double s1 = 0, s2 = 0;
	glm::vec3 leftScaleFrame = glm::vec3(0);
	glm::vec3 rightScaleFrame = glm::vec3(0);
	glm::vec3 endScale;
	if(scale.size() == 0){
		TRACE("no scale info, using default <1,1,1>");
		endScale = glm::vec3(1,1,1);
	} else {
		for(scaleIter = scale.begin(); scaleIter != scale.end(); scaleIter++){
			TRACE("sca iter at: " << scaleIter->first << ",\t" << scaleIter->second.x << ", " << scaleIter->second.y << ", " << scaleIter->second.z);
			if(scaleIter->first <= frame || s1 == 0 && s2 == 0) {
				s1 = s2 = scaleIter->first;
				leftScaleFrame = rightScaleFrame = scaleIter->second;
			} else if (scaleIter->first > frame){
				s2 = scaleIter->first;
				rightScaleFrame = scaleIter->second;
				break;
			}
		}
		endScale = glm::mix(leftScaleFrame, rightScaleFrame, boneHelpers::getMix(s1, s2, frame));
	}
	TRACE("sca framed between: " << s1 << " - " << s2);
	TRACE("    with transformation: " << endScale.x << ", " << endScale.y << ", " << endScale.z);

	double r1 = 0, r2 = 0;
	glm::quat leftRotFrame = glm::quat();
	glm::quat rightRotFrame = glm::quat();
	glm::quat endRot;
	if(rot.size() == 0){
		TRACE("no scale info, using default quat");
		endRot = glm::quat();
	} else {
		for(rotIter = rot.begin(); rotIter != rot.end(); rotIter++){
			TRACE("rot iter at: " << rotIter->first);		
			if(rotIter->first <= frame || r1 == 0 && r2 == 0) {
				r1 = r2 = rotIter->first;
				leftRotFrame = rightRotFrame = rotIter->second;
			} else if (rotIter->first > frame){
				r2 = rotIter->first;
				rightRotFrame = rotIter->second;
				break;
			}
		}
		if(sin(acos(glm::dot(leftRotFrame, rightRotFrame))) == 0 || leftRotFrame == rightRotFrame) {
			endRot = leftRotFrame;
		} else {
			if(glm::dot(leftRotFrame, rightRotFrame) < 0){
				leftRotFrame *= -1.f;
			}
			endRot = glm::mix(leftRotFrame, rightRotFrame, boneHelpers::getMix(r1, r2, frame));				
		}
		if(isnan(endRot.x)){
			endRot = leftRotFrame;
			//FATAL("Is a nan");
		}
 	}
	TRACE("rot framed between: " << r1 << " - " << r2);
	TRACE("    with transformation: " << endRot.x << ", " << endRot.y << ", " << endRot.z << ", " << endRot.w);

	glm::mat4 r = glm::mat4_cast(endRot);
	glm::mat4 s = glm::scale(glm::mat4(1.f), endScale);
	glm::mat4 t = glm::translate(glm::mat4(1.f), endPos);

	currentTransform = t * s * r * glm::mat4(1);
}

void Bone::setNameDebug(const char* name){
	this->name = std::string(name);
}


void Bone::printChain(){
	if(parent){
		printf("%s -> ", name.c_str());
		parent->printChain();
	} else {
		printf("%s\n", name.c_str());
	}
}

std::ostream &operator<< (std::ostream &out, const glm::mat4 &mat) {
    out << "{"
    	<< "[" <<  mat[0][0] << " " << mat[0][1] << " " << mat[0][2] << " " << mat[0][3] << "]"
    	<< "[" <<  mat[1][0] << " " << mat[1][1] << " " << mat[1][2] << " " << mat[1][3] << "]"
    	<< "[" <<  mat[2][0] << " " << mat[2][1] << " " << mat[2][2] << " " << mat[2][3] << "]"
    	<< "[" <<  mat[3][0] << " " << mat[3][1] << " " << mat[3][2] << " " << mat[3][3] << "]"
        << "}";
    return out;
}


void Bone::debug(){
	DEBUG("Current transforms: " << name);
	DEBUG("\t" << this->getTransform());
	DEBUG("\t" << this->getTotalTransform());
}

float Bone::getWeightForVertex(int x) {
	if(weight.find(x) != weight.end()) {
		return weight[x];			
	} else {
		return noWeight;
	}
}