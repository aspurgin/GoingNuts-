#include "Skeleton.hpp"

void Skeleton::setAt(float frame){
	for(int i=0; i<bones.size(); i++){
		bones[i]->setAt(frame);
	}
}

Skeleton::Skeleton (aiScene* scene) {
	rootSkeletonNode = scene->mRootNode;
}