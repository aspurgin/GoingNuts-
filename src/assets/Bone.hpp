#pragma once

#include <glm/glm.hpp>
#include <assimp/mesh.h>
#include <assimp/anim.h>
#include <assimp/scene.h>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/quaternion.hpp>
#include <glm/gtx/quaternion.hpp>
#include <vector>
#include <map>
#include <string>
#include <cmath>

#include <glm/gtx/compatibility.hpp>
#include <glm/gtx/quaternion.hpp>
#include <glm/gtx/euler_angles.hpp>
#include <glm/gtx/norm.hpp>


class Bone {
private:
	static float noWeight;
	Bone* parent;
	std::string name;
	std::map<int, float> weight;

	std::map<double, glm::vec3> pos;
	std::map<double, glm::vec3> scale;
	std::map<double, glm::quat> rot;

	glm::mat4 currentTransform;
	glm::mat4 offsetTransform;
	glm::mat4 rootTransform;

public:
	glm::mat4 getCompleteTransform();
	glm::mat4 getTotalTransform();
	glm::mat4 getTransform();

	void setAt(double frame);

	Bone(aiNode*, aiBone*, aiNodeAnim*);
	void setParent(Bone* parent);
	float getWeightForVertex(int);

	void setNameDebug(const char*);
	void printChain();
	void debug();
};