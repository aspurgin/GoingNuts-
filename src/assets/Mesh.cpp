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

void Mesh::debug(){
   for(int i=0; i<vertices.size(); i++){
      std::cout << vertices[i].x << ", " << vertices[i].y << ", " << vertices[i].z << "\n";
   }
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


   if(!scene) {
      ERROR("Could not import file: " << path);
      ERROR("Reason: " << importer.GetErrorString());
      exit(1);
   }
   debugNodes(scene->mRootNode, 0);
   for(int sc = 0; sc < scene->mNumMeshes; sc++){
      const aiMesh* mesh = scene->mMeshes[sc];
      for(unsigned int f=0; f<mesh->mNumFaces; f++){
         const aiFace* face = &mesh->mFaces[f];
         for(int i=0; i<3; i++){
            glm::vec3 vertex(
               mesh->mVertices[face->mIndices[i]][0],
               mesh->mVertices[face->mIndices[i]][1],
               mesh->mVertices[face->mIndices[i]][2]);
            glm::vec3 normal(
               mesh->mNormals[face->mIndices[i]][0],
               mesh->mNormals[face->mIndices[i]][1],
               mesh->mNormals[face->mIndices[i]][2]);
            glm::vec2 uv(
               mesh->mTextureCoords[0][face->mIndices[i]].x,
               mesh->mTextureCoords[0][face->mIndices[i]].y);
            vertices.push_back(vertex);
            normals.push_back(normal);
            uvs.push_back(uv);
         }
      }
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
   
   glGenBuffers(1, &objHandle_);
   glBindBuffer(GL_ARRAY_BUFFER, objHandle_);
   glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(glm::vec3), &(vertices[0]), GL_STATIC_DRAW);
   
   /*glGenBuffers(1, &uvHandle_);
   glBindBuffer(GL_ARRAY_BUFFER, objHandle_);
   glBufferData(GL_ARRAY_BUFFER, uvs.size() * sizeof(glm::vec2), &(uvs[0]), GL_STATIC_DRAW);*/
}
