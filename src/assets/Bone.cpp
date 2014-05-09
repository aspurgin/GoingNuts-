#include "Bone.hpp"

glm::mat4 Bone::getTotalTransform(){
	return glm::mat4();
}

glm::mat4 Bone::getTransform(){
	return glm::mat4();
}

inline float getMix(float start, float end, float goal){
	if(goal <= start) {
		return 0;	
	} else if(goal >= end){
		return 1;	
	} else {
		return (goal - start) / (end - start);
	}
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

	glm::vec3 endPos = glm::mix(leftPosFrame, rightPosFrame, getMix(p1, p2, frame));
	glm::vec3 endScale = glm::mix(leftScaleFrame, rightScaleFrame, getMix(s1, s2, frame));
	glm::quat endRot = glm::mix(leftRotFrame, rightRotFrame, getMix(r1, r2, frame));

}