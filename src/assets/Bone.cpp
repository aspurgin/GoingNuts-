#include "Bone.hpp"

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

Bone::Bone(aiBone* bone, aiNodeAnim* anim){
	DEBUG("BoneInit");
	weight.resize(bone->mNumWeights);
	for(int w = 0; w < bone->mNumWeights; w++){
		DEBUG(w);
		weight[bone->mWeights[w].mVertexId] = bone->mWeights[w].mWeight;
	}
	DEBUG("weights done");
	aiMatrix4x4 mat = bone->mOffsetMatrix;
	offsetTransform = glm::mat4(mat.a1, mat.a2, mat.a3, mat.a4,
				 			    mat.b1, mat.b2, mat.b3, mat.b4,
				 			    mat.c1, mat.c2, mat.c3, mat.c4,
	   			 			    mat.d1, mat.d2, mat.d3, mat.d4);
	if(anim != 0){
		DEBUG("doing Anims");
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
		DEBUG("not doing Anims");
	}
}

glm::mat4 Bone::getTotalTransform(){
	if(parent){
		return currentTransform * parent->getTotalTransform();
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

	double p1, p2;
	glm::vec3 leftPosFrame = glm::vec3(0);
	glm::vec3 rightPosFrame = glm::vec3(0);

	for(posIter = pos.begin(); posIter != pos.end(); posIter++){
		if(posIter->first <= frame) {
			p1 = p2 = posIter->first;
			leftPosFrame = rightPosFrame = posIter->second;
		} else if (posIter->first > frame){
			p2 = posIter->first;
			rightPosFrame = posIter->second;
			break;
		}
	}


	double s1, s2;
	glm::vec3 leftScaleFrame = glm::vec3(0);
	glm::vec3 rightScaleFrame = glm::vec3(0);

	for(scaleIter = pos.begin(); scaleIter != pos.end(); scaleIter++){
		if(posIter->first <= frame) {
			s1 = s2 = scaleIter->first;
			leftScaleFrame = rightScaleFrame = scaleIter->second;
		} else if (scaleIter->first > frame){
			s2 = scaleIter->first;
			rightScaleFrame = scaleIter->second;
			break;
		}
	}

	double r1, r2;
	glm::quat leftRotFrame = glm::quat();
	glm::quat rightRotFrame = glm::quat();

	for(rotIter = rot.begin(); rotIter != rot.end(); rotIter++){
		if(rotIter->first <= frame) {
			r1 = r2 = scaleIter->first;
			leftRotFrame = rightRotFrame = rotIter->second;
		} else if (rotIter->first > frame){
			r2 = scaleIter->first;
			rightRotFrame = rotIter->second;
			break;
		}
	}

	glm::vec3 endPos = glm::mix(leftPosFrame, rightPosFrame, boneHelpers::getMix(p1, p2, frame));
	glm::vec3 endScale = glm::mix(leftScaleFrame, rightScaleFrame, boneHelpers::getMix(s1, s2, frame));
	glm::quat endRot = glm::mix(leftRotFrame, rightRotFrame, boneHelpers::getMix(r1, r2, frame));
	//glm::quat  endRot = glm::quat(2,3,4,5);

	currentTransform = glm::mat4(); 
	currentTransform = glm::mat4_cast(endRot) * currentTransform;
	currentTransform = glm::scale(currentTransform, endScale);
	currentTransform = glm::translate(currentTransform, endPos);
}
