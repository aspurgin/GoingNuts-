#pragma once

#include <glm/glm.hpp>
#include <assimp/mesh.h>
#include <assimp/anim.h>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/quaternion.hpp>
#include <glm/gtx/quaternion.hpp>
#include <vector>
#include <map>

#include <glm/gtx/compatibility.hpp>
#include <glm/gtx/quaternion.hpp>
#include <glm/gtx/euler_angles.hpp>
#include <glm/gtx/norm.hpp>

class Bone {
private:
	Bone* parent = (Bone*)0;
	std::vector<float> weight;

	std::map<double, glm::vec3> pos;
	std::map<double, glm::vec3> scale;
	std::map<double, glm::quat> rot;

	glm::mat4 currentTransform;
	glm::mat4 offsetTransform;

public:
	glm::mat4 getTotalTransform();
	glm::mat4 getTransform();

	void setAt(double frame);

	Bone(aiBone* bone, aiNodeAnim* anim);
	void setParent(Bone* parent);
	void debug();

	float& operator[] (int x){
		return weight[x];
	};
};