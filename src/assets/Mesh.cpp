#include "Mesh.hpp"

using namespace glm;

void Mesh::clearData(){
   verts.clear();
   normals.clear();
   faces.clear();
   UV.clear();
   posHandle = 0;
	normHandle = 0;
	faceHandle = 0;
	uvHandle = 0;
}

void Mesh::genBuffers(){
   glGenBuffers(1, &posHandle);
   glBindBuffer(GL_ARRAY_BUFFER, posHandle);
   glBufferData(GL_ARRAY_BUFFER, verts.size() * sizeof(float) * 3, &verts.front(), GL_STATIC_DRAW);
   
   glGenBuffers(1, &normHandle);
   glBindBuffer(GL_ARRAY_BUFFER, normHandle);
   glBufferData(GL_ARRAY_BUFFER, normals.size() * sizeof(float) * 3, &normals.front(), GL_STATIC_DRAW);
   
   glGenBuffers(1, &faceHandle);
   glBindBuffer(GL_ARRAY_BUFFER, faceHandle);
   glBufferData(GL_ARRAY_BUFFER, faces.size() * sizeof(int) * 3, &faces.front(), GL_STATIC_DRAW);
   
   glGenBuffers(1, &uvHandle);
   glBindBuffer(GL_ARRAY_BUFFER, uvHandle);
   glBufferData(GL_ARRAY_BUFFER, UV.size() * sizeof(float) * 2, &UV.front(), GL_STATIC_DRAW);
}

Mesh::Mesh(const char* path){
   clearData();
   if (!path) {
      createDefaultCube();
   } else {
      std::cerr << "Mesh import from file not supported at this time\n";
      throw 2;
   }
}

Mesh::Mesh(){
   clearData();
   createDefaultCube();
}

Mesh::~Mesh(){
   
}

int Mesh::numFaceElements() {
   return faces.size() * 3;
}

int Mesh::numVertexElements() {
   return verts.size() * 3;
}

void Mesh::createDefaultCube(){
   verts.push_back(vec3(-0.5, -0.5, -0.5)); // back face verts [0-3]
   verts.push_back(vec3(-0.5,  0.5, -0.5));
   verts.push_back(vec3(0.5,  0.5, -0.5));
   verts.push_back(vec3(0.5, -0.5, -0.5));
   UV.push_back(vec2(0,0));
   UV.push_back(vec2(0,1));
   UV.push_back(vec2(1,1));
   UV.push_back(vec2(1,0));

   verts.push_back(vec3(-0.5, -0.5,  0.5)); // front face verts [4-7]
   verts.push_back(vec3(-0.5,  0.5,  0.5));
   verts.push_back(vec3(0.5,  0.5,  0.5));
   verts.push_back(vec3(0.5, -0.5,  0.5));
   UV.push_back(vec2(0,0));
   UV.push_back(vec2(0,1));
   UV.push_back(vec2(1,1));
   UV.push_back(vec2(1,0));

   verts.push_back(vec3(-0.5, -0.5,  0.5)); // left face verts [8-11]
   verts.push_back(vec3(-0.5, -0.5, -0.5));
   verts.push_back(vec3(-0.5,  0.5, -0.5));
   verts.push_back(vec3(-0.5,  0.5,  0.5));
   UV.push_back(vec2(0,0));
   UV.push_back(vec2(0,1));
   UV.push_back(vec2(1,1));
   UV.push_back(vec2(1,0));

   verts.push_back(vec3(0.5, -0.5,  0.5)); // right face verts [12-15]
   verts.push_back(vec3(0.5, -0.5, -0.5));
   verts.push_back(vec3(0.5,  0.5, -0.5));
   verts.push_back(vec3(0.5,  0.5,  0.5));
   UV.push_back(vec2(0,0));
   UV.push_back(vec2(0,1));
   UV.push_back(vec2(1,1));
   UV.push_back(vec2(1,0));

   verts.push_back(vec3(-0.5,  0.5,  0.5)); // top face verts [16-19]
   verts.push_back(vec3(-0.5,  0.5, -0.5));
   verts.push_back(vec3(0.5,  0.5, -0.5));
   verts.push_back(vec3(0.5,  0.5,  0.5));
   UV.push_back(vec2(0,0));
   UV.push_back(vec2(0,1));
   UV.push_back(vec2(1,1));
   UV.push_back(vec2(1,0));

   verts.push_back(vec3(-0.5, -0.5,  0.5)); // bottom face verts [20-23]
   verts.push_back(vec3(-0.5, -0.5, -0.5));
   verts.push_back(vec3(0.5, -0.5, -0.5));
   verts.push_back(vec3(0.5, -0.5,  0.5));
   UV.push_back(vec2(0,0));
   UV.push_back(vec2(0,1));
   UV.push_back(vec2(1,1));
   UV.push_back(vec2(1,0));
   
   normals.push_back(vec3(0,  0, -1)); // back face verts [0-3]
   normals.push_back(vec3(0,  0, -1));
   normals.push_back(vec3(0,  0, -1));
   normals.push_back(vec3(0,  0, -1));

   normals.push_back(vec3(0,  0,  1)); // front face verts [4-7]
   normals.push_back(vec3(0,  0,  1));
   normals.push_back(vec3(0,  0,  1));
   normals.push_back(vec3(0,  0,  1));

   normals.push_back(vec3(-1,  0,  0)); // left face verts [8-11]
   normals.push_back(vec3(-1,  0,  0));
   normals.push_back(vec3(-1,  0,  0));
   normals.push_back(vec3(-1,  0,  0));

   normals.push_back(vec3(1,  0,  0)); // right face verts [12-15]
   normals.push_back(vec3(1,  0,  0));
   normals.push_back(vec3(1,  0,  0));
   normals.push_back(vec3(1,  0,  0));

   normals.push_back(vec3(0,  1,  0)); // top face verts [16-19]
   normals.push_back(vec3(0,  1,  0));
   normals.push_back(vec3(0,  1,  0));
   normals.push_back(vec3(0,  1,  0));

   normals.push_back(vec3(0, -1,  0)); // bottom face verts [20-23]
   normals.push_back(vec3(0, -1,  0));
   normals.push_back(vec3(0, -1,  0));
   normals.push_back(vec3(0, -1,  0));
   
   faces.push_back(ivec3(0,  1,  2)); // back face verts [0-3]
   faces.push_back(ivec3(2,  3,  0));

   faces.push_back(ivec3(4,  7,  6)); // front face verts [4-7]
   faces.push_back(ivec3(6,  5,  4));

   faces.push_back(ivec3(8, 11, 10)); // left face verts [8-11]
   faces.push_back(ivec3(10,  9,  8));

   faces.push_back(ivec3(12, 13, 14)); // right face verts [12-15]
   faces.push_back(ivec3(14, 15, 12));

   faces.push_back(ivec3(16, 19, 18)); // top face verts [16-19]
   faces.push_back(ivec3(18, 17, 16));

   faces.push_back(ivec3(20, 21, 22)); // bottom face verts [20-23]
   faces.push_back(ivec3(22, 23, 20));
}
