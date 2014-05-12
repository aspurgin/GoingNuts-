#pragma once

#include "Bone.hpp"
#include <assimp/anim.h>
#include <assimp/scene.h>
#include <map>
#include <string>

class Skeleton{
private:
	std::vector<Bone*> bones;

public:
	void setAt(float);

	Skeleton (const aiScene* scene);
	~Skeleton ();
};