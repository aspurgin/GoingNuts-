#include "Skeleton.hpp"

namespace skHelpers{
	aiNode* findNodeByName(aiNode* root, aiString* name){

	}

	aiString* parentOf(aiNode* root, aiString* node){

	}

	aiNodeAnim* animForName(aiAnimation* anim, aiString* name){

	}
}

void Skeleton::setAt(float frame){
	for(int i=0; i<bones.size(); i++){
		bones[i]->setAt(frame);
	}
}

Skeleton::Skeleton (aiScene* scene) {
	aiMesh* mesh = scene->mMeshes[0];

	for(int b = 0; b < mesh->mNumBones; b++){
		aiBone* bone = mesh->mBones[b];
	}

	rootSkeletonNode = scene->mRootNode;
}