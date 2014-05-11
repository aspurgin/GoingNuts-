#pragma once

#include <glm/glm.hpp>
#include <glm/gtx/transform.hpp>
#include <glm/gtc/quaternion.hpp>
#include <assimp/anim.h>
#include <assimp/scene.h>
#include <vector>
#include <map>

class Bone {
private:
	Bone* parent = (Bone*)0;
	std::vector<float> weight;

	std::map<float, glm::vec3> pos;
	std::map<float, glm::vec3> scale;
	std::map<float, glm::quat> rot;

	glm::mat4 currentTransform;
	glm::mat4 offsetTransform;

public:
	glm::mat4 getTotalTransform();
	glm::mat4 getTransform();

	void setAt(float frame);

	Bone(aiBone* bone, aiNodeAnim* anim);
	void setParent(Bone* parent);

	float& operator[] (int x){
		return weight[x];
	};
};