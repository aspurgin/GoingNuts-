#include "Bone.hpp"

namespace boneHelpers{
	inline float getMix(float start, float end, float goal){
		if(goal <= start) {
			return 0;	
		} else if(goal >= end){
			return 1;	
		} else {
			return (goal - start) / (end - start);
		}
	}
}

Bone::Bone(aiBone* bone, aiNodeAnim* anim){
	for(int w = 0; w < bone->mNumWeights; w++){
		weight[bone->mWeights[w].mVertexId] = bone->mWeights[w].mWeight;
	}

	aiMatrix4x4 mat = bone->mOffsetMatrix;
	offsetTransform = glm::mat4(mat.a1, mat.a2, mat.a3, mat.a4,
				 			    mat.b1, mat.b2, mat.b3, mat.b4,
				 			    mat.c1, mat.c2, mat.c3, mat.c4,
	   			 			    mat.d1, mat.d2, mat.d3, mat.d4);
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

void Bone::setAt(float frame){
	std::map<float, glm::vec3>::iterator posIter;
	std::map<float, glm::vec3>::iterator scaleIter;
	std::map<float, glm::quat>::iterator rotIter;

	float p1, p2;
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


	float s1, s2;
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

	float r1, r2;
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

	currentTransform = glm::mat4(); 
	currentTransform = glm::mat4_cast(endRot) * currentTransform;
	currentTransform = glm::scale(currentTransform, endScale);
	currentTransform = glm::translate(currentTransform, endPos);
}