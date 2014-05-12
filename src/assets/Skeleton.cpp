#include "Skeleton.hpp"

using namespace std;

namespace skHelpers{
	aiNode* findNodeByName(aiNode* root, aiString name){
		if(root->mName == name) {
			return root;
		} else {
			for(int i=0; i<root->mNumChildren; i++){
				aiNode* child = findNodeByName(root->mChildren[i], name);
				if(child != 0){
					return child;
				}
			}
			return 0;
		}
	}

	aiString parentOf(aiNode* root, aiString node){
		for(int i=0; i<root->mNumChildren; i++){
			if(node == root->mChildren[i]->mName) {
				return root->mName;
			} else {
				return parentOf(root->mChildren[i], node);
			}
		}
		return aiString();
	}

	aiNodeAnim* animForName(aiAnimation* anim, aiString name){
		for(int c = 0; c<anim->mNumChannels; c++){
			if(name == anim->mChannels[c]->mNodeName){
				return anim->mChannels[c];
			}
		}
		return 0;
	}
}

void Skeleton::setAt(float frame){
	for(int i=0; i<bones.size(); i++){
		bones[i]->setAt(frame);
	}
}

Skeleton::Skeleton (const aiScene* scene) {
	aiMesh* mesh = scene->mMeshes[0];
	DEBUG("NumVerts: " << mesh->mNumVertices);

	std::map<string, Bone*> boneMap;

	for(int b = 0; b < mesh->mNumBones; b++){
		aiBone* bone = mesh->mBones[b];
		Bone* newBone = new Bone(bone, skHelpers::animForName(scene->mAnimations[0], bone->mName));

		boneMap[string(bone->mName.C_Str())] = newBone;
		bones.push_back(newBone);
	}

	for(int b = 0; b < mesh->mNumBones; b++){
		aiBone* bone = mesh->mBones[b];
		
		aiString parentFor = skHelpers::parentOf(scene->mRootNode, bone->mName);

		if(boneMap.find(string(parentFor.C_Str())) != boneMap.end()){
			DEBUG("parent relation: " << bone->mName.C_Str() << " is child of " << parentFor.C_Str());
			boneMap[string(bone->mName.C_Str())]->setParent(boneMap[string(parentFor.C_Str())]);
		}
	}

}

Skeleton::~Skeleton(){
	for(int i=0; i<bones.size(); i++){
		delete bones[i];
	}
}

