#pragma once

#include "Bone.hpp"
#include <assimp/anim.h>
#include <assimp/scene.h>

class Skeleton{
private:
	std::vector<Bone*> bones;
	aiNode* rootSkeletonNode;

public:
	void setAt(float);

	Skeleton (aiScene* scene);
};