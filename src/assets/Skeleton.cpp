#include "Skeleton.hpp"

using namespace std;

namespace skHelpers{
	aiNode* findNodeByName(aiNode* root, aiString name){
		return root->FindNode(name);
	}

	aiString parentOf(aiNode* root, aiString node){
		for(int i=0; i<root->mNumChildren; i++){
			if(node == root->mChildren[i]->mName) {
				return root->mName;
			} else {
				aiString rval = parentOf(root->mChildren[i], node);
				if(rval != aiString()){
					return rval;
				}
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
		bones[i]->setAt(frame / 24.0);
	}
}

Skeleton::Skeleton(){
	hasBones = false;
}

Skeleton::Skeleton (const aiScene* scene) {
	hasBones = true;
	aiMesh* mesh = scene->mMeshes[0];

	std::map<string, Bone*> boneMap;

	for(int b = 0; b < mesh->mNumBones; b++){
		aiBone* bone = mesh->mBones[b];

		Bone* newBone = new Bone(bone, skHelpers::animForName(scene->mAnimations[0], bone->mName));
		newBone->setNameDebug(bone->mName.C_Str());

		boneMap[string(bone->mName.C_Str())] = newBone;
		bones.push_back(newBone);
	}

	for(int b = 0; b < mesh->mNumBones; b++){
		aiBone* bone = mesh->mBones[b];
		aiString parentFor = skHelpers::parentOf(scene->mRootNode, bone->mName);
		if(boneMap.find(string(parentFor.C_Str())) != boneMap.end()){
			boneMap[string(bone->mName.C_Str())]->setParent(boneMap[string(parentFor.C_Str())]);
		}
	}

	this->setAt(40);
	for(int i=0; i<bones.size(); i++){
		bones[i]->debug();
	}
}

Skeleton::~Skeleton(){
}


glm::vec3 Skeleton::transform(int v, glm::vec3 vertex){
	glm::vec3 accum(0,0,0);
	for(int b=0; b<bones.size(); b++){
		Bone* bone = bones[b];
		float weight = bone->getWeightForVertex(v);
		if(weight){
			glm::vec4 inc = glm::vec4(vertex, 1) * bone->getTotalTransform();
			accum += glm::vec3(inc.x, inc.y, inc.z) * weight;
		}
	}
	return accum;
}
