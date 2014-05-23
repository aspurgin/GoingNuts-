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

	aiNodeAnim* animForName(const aiScene* scene, aiString name){
		INFO("looking for " << name.C_Str());
		for(int a = 0; a<scene->mNumAnimations; a++) {
			aiAnimation* anim = scene->mAnimations[a];
			for(int c = 0; c<anim->mNumChannels; c++){
				INFO("\tChecking: " << anim->mChannels[c]->mNodeName.C_Str());
				if(string(name.C_Str()) == string(anim->mChannels[c]->mNodeName.C_Str())){
					INFO("\tfound it!");
					return anim->mChannels[c];
				}
			}
		}
		INFO("\tdid not find it!");
		return 0;
	}
}

Skeleton::Skeleton (const aiScene* scene) {
	hasBones = true;
	aiMesh* mesh = scene->mMeshes[0];

	std::map<string, Bone*> boneMap;

	for(int b = 0; b < mesh->mNumBones; b++){
		aiBone* bone = mesh->mBones[b];

		Bone* newBone = new Bone(scene->mRootNode, bone, skHelpers::animForName(scene, bone->mName));
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
}

Skeleton::Skeleton(){
	hasBones = false;
}

Skeleton::~Skeleton(){
}

/*
 * Sets the deformation of the skeleton for a time in the animation.
 */
void Skeleton::setAt(float frame){
	for(int i=0; i<bones.size(); i++){
		bones[i]->setAt(frame / 24.0);
	}
}

/*
 * transforms a vertex based on the last set state of the skeleton
 */
glm::vec3 Skeleton::transform(int v, glm::vec3 vertex){
	glm::vec3 accum(0,0,0);
	for(int b=0; b<bones.size(); b++){
		Bone* bone = bones[b];
		float weight = bone->getWeightForVertex(v);
		if(weight){
			glm::vec4 inc = bone->getCompleteTransform() * glm::vec4(vertex, 1);
			accum += glm::vec3(inc) * weight;
		}
	}
	return accum;
}
