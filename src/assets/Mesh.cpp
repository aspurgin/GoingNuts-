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

 using namespace std;


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
  /* DEBUG("_-----------------_");
   for(int i=0; i<vertices.size(); i++){
      DEBUG(vertices[i].x << ", " << vertices[i].y << ", " << vertices[i].z);
   }
   DEBUG("_-----------------_");
   for(int i=0; i<indeces.size(); i++){
      DEBUG(indeces[i].x << ", " << indeces[i].y << ", " << indeces[i].z);
   }
   DEBUG("_-----------------_");*/
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
   const aiMesh* mesh = scene->mMeshes[0];

   for(unsigned int v=0; v<mesh->mNumVertices; v++){
      vertices.push_back(glm::vec3(mesh->mVertices[v][0],
                                   mesh->mVertices[v][1],
                                   mesh->mVertices[v][2]));
   }

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
   reset();
}

void Mesh::calculateTangentsAndBitangents() {

   for (unsigned int i = 0; i < vertices.size(); i++)
   {
      tangents.push_back(glm::vec3(0.0f,0.0f,0.0f));
      bitangents.push_back(glm::vec3(0.0f,0.0f,0.0f));
   }   

   for (unsigned int i = 0; i < indeces.size(); i++)
   {
      glm::vec3 v0 = vertices[ indeces[i].x ];
      glm::vec3 v1 = vertices[ indeces[i].y ];
      glm::vec3 v2 = vertices[ indeces[i].z ];

      glm::vec2 uv0 = uvs[ indeces[i].x ];
      glm::vec2 uv1 = uvs[ indeces[i].y ];
      glm::vec2 uv2 = uvs[ indeces[i].z ];

      //Calculate the basis vectors for the given triangle
      glm::vec3 deltaPosition1 = v1 - v0;
      glm::vec3 deltaPosition2 = v2 - v0;

      glm::vec2 deltaUV1 = uv1 - uv0;
      glm::vec2 deltaUV2 = uv2 - uv0;

      float oneOverDivisor = 1.0f / ( (deltaUV1.x * deltaUV2.y) - (deltaUV1.y * deltaUV2.x) );
      glm::vec3 tangent = ( (deltaPosition1 * deltaUV2.y)   - (deltaPosition2 * deltaUV1.y) ) * oneOverDivisor;
      glm::vec3 bitangent = ( (deltaPosition2 * deltaUV1.x)   - (deltaPosition1 * deltaUV2.x) ) * oneOverDivisor;

      // Add up all the tangent vectors to be averaged/normalized later
      tangents[ indeces[i].x ] += tangent;
      tangents[ indeces[i].y ] += tangent;
      tangents[ indeces[i].z ] += tangent;

      bitangents[ indeces[i].x ] += bitangent;
      bitangents[ indeces[i].y ] += bitangent;
      bitangents[ indeces[i].z ] += bitangent;
   }

   // Force the normal map basis to be othogonal
   for (unsigned int i = 0; i < normals.size(); i++)
   {
      glm::vec3 normal = normals[i];
      glm::vec3& tangent = tangents[i];

      tangent = glm::normalize(tangent - normal * glm::dot(normal, tangent));
   }
   reset();
}

void Mesh::setAt(const char* anim, float interp){
   string animName(anim);
   if(interp < 0 || animIds.find(animName) != animIds.end()){
      setAt(animIds[animName], interp);
   } else {
      WARN("Animation not found: " << anim);
   }
}

void Mesh::setAt(int anim, float interp){
   if(interp < 0){
      setAtRaw(0);
      return;
   }
   glm::vec2 bounds = anims[anim];
   float range = bounds[1] - bounds[0];
   float rescoped = fmodf(interp * range, range) + bounds[0];
   setAtRaw(rescoped);
}

void Mesh::setAtRaw(float interp){
   skeleton.setAt(interp);
   for(int i=0; i<vertices.size(); i++){
      tmpVertices[i] = skeleton.transform(i, vertices[i]);
      tmpNormals[i] = skeleton.transform(i, normals[i]);
   }
   bindPositionBuffer();
   bindNormalBuffer();
}

void Mesh::reset(){
   tmpVertices.clear();
   tmpIndeces.clear();
   tmpUvs.clear();
   tmpNormals.clear();
   tmptangents.clear();
   tmpbitangents.clear();

   tmpVertices = vector<glm::vec3>(vertices);
   tmpIndeces = vector<glm::uvec3>(indeces);
   tmpUvs = vector<glm::vec2>(uvs);
   tmpNormals = vector<glm::vec3>(normals);
   tmptangents = vector<glm::vec3>(tangents);
   tmpbitangents = vector<glm::vec3>(bitangents);
}

void  Mesh::buildBuffers(){
   calculateTangentsAndBitangents();

   bindPositionBuffer();
   bindIdxBuffer();
   bindNormalBuffer();
   bindUvBuffer();
   bindTanBuffer();
   bindBiTanBuffer();
}


void Mesh::bindPositionBuffer(){
   glGenBuffers(1, &vertHandle_);
   glBindBuffer(GL_ARRAY_BUFFER, vertHandle_);
   glBufferData(GL_ARRAY_BUFFER, tmpVertices.size() * sizeof(glm::vec3), &(tmpVertices[0]), GL_STREAM_DRAW);
   //glBindBuffer(GL_ARRAY_BUFFER, 0);
}

void Mesh::bindNormalBuffer(){
   glGenBuffers(1, &normHandle_);
   glBindBuffer(GL_ARRAY_BUFFER, normHandle_);
   glBufferData(GL_ARRAY_BUFFER, tmpNormals.size() * sizeof(glm::vec3), &(tmpNormals[0]), GL_STATIC_DRAW);
   //glBindBuffer(GL_ARRAY_BUFFER, 0);
}

void Mesh::bindUvBuffer(){
   glGenBuffers(1, &uvHandle_);
   glBindBuffer(GL_ARRAY_BUFFER, uvHandle_);
   glBufferData(GL_ARRAY_BUFFER, tmpUvs.size() * sizeof(glm::vec2), &(tmpUvs[0]), GL_STATIC_DRAW);
   //glBindBuffer(GL_ARRAY_BUFFER, 0);
}

void Mesh::bindIdxBuffer(){
   glGenBuffers(1, &idxHandle_);
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, idxHandle_);
   glBufferData(GL_ELEMENT_ARRAY_BUFFER, tmpIndeces.size() * sizeof(glm::uvec3), &(tmpIndeces[0]), GL_STATIC_DRAW);
   //glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
}

void Mesh::bindTanBuffer(){
   glGenBuffers(1, &tangentsHandle_);
   glBindBuffer(GL_ARRAY_BUFFER, tangentsHandle_);
   glBufferData(GL_ARRAY_BUFFER, tmptangents.size() * sizeof(glm::vec3), &(tmptangents[0]), GL_STATIC_DRAW);   
}

void Mesh::bindBiTanBuffer(){
   glGenBuffers(1, &bitangentsHandle_);
   glBindBuffer(GL_ARRAY_BUFFER, bitangentsHandle_);
   glBufferData(GL_ARRAY_BUFFER, tmpbitangents.size() * sizeof(glm::vec3), &(tmpbitangents[0]), GL_STATIC_DRAW);
}
