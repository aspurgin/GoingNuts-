/**
 * Mesh.cpp
 * 
 * by Brent Williams
 *
 * Notes:
 */

#include "Mesh.hpp"

Mesh::Mesh(char* fileName)
{
   parse(fileName);
}

Mesh::Mesh()
{

}

Mesh::~Mesh()
{

}

void Mesh::debug(){
   for(int i=0; i<vertices.size(); i++){
      std::cout << vertices[i].x << ", " << vertices[i].y << ", " << vertices[i].z << "\n";
   }
}

void Mesh::parse(char* fileName)
{
   std::vector<unsigned int> vertexIndices, uvIndices, normalIndices;
   std::vector<glm::vec3> tempVertices;
   std::vector<glm::vec2> tempUVs;
   std::vector<glm::vec3> tempNormals;

   unsigned int vertexIndex[3], uvIndex[3], normalIndex[3];
   unsigned int i, result;
   glm::vec3 vertex;
   glm::vec2 uv;
   glm::vec3 normal;
   char buffer[MAX_CHARS_PER_LINE];
   
   std::ifstream objFile (fileName, std::ifstream::in);
   
   if (!(objFile.is_open() && objFile.good()))
   {
      std::cerr << "Unable to open file " << fileName << "\n";
      exit(1);
   }
   
   while (objFile.good())
   {
      objFile.getline(buffer, MAX_CHARS_PER_LINE);
      
      result = sscanf(buffer, " v %f %f %f ", &vertex.x, &vertex.y, &vertex.z);
      if (result == 3)
      {
         tempVertices.push_back(vertex);
      }

      result = sscanf(buffer, " vt %f %f ", &uv.x, &uv.y);
      if (result == 2)
      {
         tempUVs.push_back(uv);
      }

      result = sscanf(buffer, " vn %f %f %f ", &normal.x, &normal.y, &normal.z);
      if (result == 3)
      {
         tempNormals.push_back(normal);
      }
      
      result = sscanf(buffer, " f %d/%d/%d %d/%d/%d %d/%d/%d ", &vertexIndex[0], &uvIndex[0], 
                      &normalIndex[0], &vertexIndex[1], &uvIndex[1], &normalIndex[1], 
                      &vertexIndex[2], &uvIndex[2], &normalIndex[2]);
      if (result == 9)
      {
         vertexIndices.push_back(vertexIndex[0]);
         vertexIndices.push_back(vertexIndex[1]);
         vertexIndices.push_back(vertexIndex[2]);
         
         uvIndices.push_back(uvIndex[0]);
         uvIndices.push_back(uvIndex[1]);
         uvIndices.push_back(uvIndex[2]);
         
         normalIndices.push_back(normalIndex[0]);
         normalIndices.push_back(normalIndex[1]);
         normalIndices.push_back(normalIndex[2]);
      }
   }
   
   for(i = 0; i < vertexIndices.size(); i++)
   {
      unsigned int vertexIndex = vertexIndices[i];
      unsigned int uvIndex = uvIndices[i];
      unsigned int normalIndex = normalIndices[i];
      
      glm::vec3 vertex = tempVertices[vertexIndex-1];
      glm::vec2 uv = tempUVs[uvIndex-1];
      glm::vec3 normal = tempNormals[normalIndex-1];
      
      vertices.push_back(vertex);
      uvs.push_back(uv);
      normals.push_back(normal);
   }
}


void  Mesh::buildBuffers(){
   glGenBuffers(1, &normHandle);
   glBindBuffer(GL_ARRAY_BUFFER, normHandle);
   glBufferData(GL_ARRAY_BUFFER, normals.size() * sizeof(glm::vec3), &(normals[0]), GL_STATIC_DRAW);
   
   glGenBuffers(1, &objHandle);
   glBindBuffer(GL_ARRAY_BUFFER, objHandle);
   glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(glm::vec3), &(vertices[0]), GL_STATIC_DRAW);
   
   /*glGenBuffers(1, &uvHandle);
   glBindBuffer(GL_ARRAY_BUFFER, objHandle);
   glBufferData(GL_ARRAY_BUFFER, uvs.size() * sizeof(glm::vec2), &(uvs[0]), GL_STATIC_DRAW);*/
}
