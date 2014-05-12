/**
 * Mesh.cpp
 * 
 * by Brent Williams
 *
 * Notes:
 */
#ifdef _WIN32
#define _CRT_SECURE_NO_WARNINGS
#endif

#include "Mesh.hpp"


void debugNodes(aiNode* node, int level){
   for(int t = 0; t<level; t++){
      std::cout << "\t";
   }
   std::cout << node->mName.C_Str() << "\n";

   for(int i = 0; i < node->mNumChildren; i++){
      debugNodes(node->mChildren[i], level+1);
   }
}

Mesh::Mesh(char* fileName)
{
   INFO("loading model " << fileName);
   parseAI(fileName);
   parseAnimIdx(fileName);
}

Mesh::Mesh()
{

}

Mesh::~Mesh()
{

}

size_t Mesh::getVertCount(){
   return vertices.size();
}

size_t Mesh::getIdxCount(){
   return indeces.size() * 3;
}

void Mesh::debug(){
   DEBUG("_-----------------_");
   for(int i=0; i<vertices.size(); i++){
      DEBUG(vertices[i].x << ", " << vertices[i].y << ", " << vertices[i].z);
   }
   DEBUG("_-----------------_");
   for(int i=0; i<indeces.size(); i++){
      DEBUG(indeces[i].x << ", " << indeces[i].y << ", " << indeces[i].z);
   }
   DEBUG("_-----------------_");
}

void Mesh::parseAnimIdx(const char* fileName){
   std::string f(fileName);
   f.append(".idx");
   std::ifstream infile(f.c_str());

   std::string keyName;
   int start, end;

   DEBUG("Starting to parse IDX for " << fileName);
   int id = 0;
   while(infile >> keyName >> start >> end){
      animIds[keyName] = id;
      anims[id] = glm::vec2(start, end);
      DEBUG(keyName << "[" << id << "]: " << start << ", " << end);
      id++;
   }
}


void Mesh::parseAI(const char* path){
   Assimp::Importer importer;
   const aiScene* scene = importer.ReadFile(path, aiProcess_Triangulate | aiProcess_JoinIdenticalVertices);

   Skeleton test(scene);

   if(!scene) {
      ERROR("Could not import file: " << path);
      ERROR("Reason: " << importer.GetErrorString());
      exit(1);
   }
   debugNodes(scene->mRootNode, 0);
   const aiMesh* mesh = scene->mMeshes[0];

   for(unsigned int v=0; v<mesh->mNumVertices; v++){
      vertices.push_back(glm::vec3(mesh->mVertices[v][0],
                                   mesh->mVertices[v][1],
                                   mesh->mVertices[v][2]));
   }
   DEBUG("NumVerts: " << mesh->mNumVertices);

   for(unsigned int n=0; n<mesh->mNumVertices; n++){
      normals.push_back(glm::vec3(mesh->mNormals[n][0],
                                   mesh->mNormals[n][1],
                                   mesh->mNormals[n][2]));
   }

   for(unsigned int f=0; f<mesh->mNumFaces; f++){
      aiFace face = mesh->mFaces[f];
      if(face.mNumIndices != 3) {
         ERROR("NON-TRIANGULAR POLY");
      }
      indeces.push_back(glm::uvec3(face.mIndices[0],
                                   face.mIndices[1],
                                   face.mIndices[2]));
   }

   for(unsigned int u=0; u<mesh->mNumVertices; u++){
      uvs.push_back(glm::vec2(mesh->mTextureCoords[0][u].x, mesh->mTextureCoords[0][u].y));
   }
}

void Mesh::setAt(const char* anim, float interp){
   setAt(animIds[std::string(anim)], interp);
}

void Mesh::setAt(int anim, float interp){
   WARN("NOT YET MIPLEMENTED");
}

void  Mesh::buildBuffers(){
   glGenBuffers(1, &normHandle_);
   glBindBuffer(GL_ARRAY_BUFFER, normHandle_);
   glBufferData(GL_ARRAY_BUFFER, normals.size() * sizeof(glm::vec3), &(normals[0]), GL_STATIC_DRAW);
   //glBindBuffer(GL_ARRAY_BUFFER, 0);
   
   glGenBuffers(1, &vertHandle_);
   glBindBuffer(GL_ARRAY_BUFFER, vertHandle_);
   glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(glm::vec3), &(vertices[0]), GL_STATIC_DRAW);
   //glBindBuffer(GL_ARRAY_BUFFER, 0);

   glGenBuffers(1, &uvHandle_);
   glBindBuffer(GL_ARRAY_BUFFER, uvHandle_);
   glBufferData(GL_ARRAY_BUFFER, uvs.size() * sizeof(glm::vec2), &(uvs[0]), GL_STATIC_DRAW);
   //glBindBuffer(GL_ARRAY_BUFFER, 0);

   glGenBuffers(1, &idxHandle_);
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, idxHandle_);
   glBufferData(GL_ELEMENT_ARRAY_BUFFER, indeces.size() * sizeof(glm::uvec3), &(indeces[0]), GL_STATIC_DRAW);
   //glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
}
