#pragma once

#ifdef _WIN32
#include "../helperFiles/Util.hpp"
#endif

#include "Bone.hpp"
#include <assimp/anim.h>
#include <assimp/scene.h>
#include <map>
#include <string>

class Skeleton{
private:
	std::vector<Bone*> bones;
	bool hasBones;

public:
	void setAt(float);

	Skeleton (const aiScene* scene);
	Skeleton ();
	~Skeleton ();
	glm::vec3 transform(int, glm::vec3);
};