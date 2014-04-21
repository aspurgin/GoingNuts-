#pragma once

#include <vector>
#include <glm/glm.hpp>
#include <assimp/cimport.h>
#include <assimp/scene.h>
#include <assimp/postprocess.h>
#include <iostream>
#include <GL/glew.h>
#include <GLFW/glfw3.h>


class Mesh {
private:

	void createDefaultCube();
	void clearData();

	
public:
	Mesh();
	Mesh(const char* path);
	~Mesh();
   
   void genBuffers();
   int numFaceElements();
   int numVertexElements();

	GLuint posHandle;
	GLuint normHandle;
	GLuint faceHandle;
	GLuint uvHandle;

	std::vector<glm::vec3> verts;
	std::vector<glm::ivec3> faces;
	std::vector<glm::vec3> normals;
	std::vector<glm::vec2> UV;

};
