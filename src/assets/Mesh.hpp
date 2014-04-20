#pragma once

#include <vector>
#include <glm/glm.hpp>
#include <assimp/cimport.h>
#include <assimp/scene.h>
#include <assimp/postprocess.h>
#include <iostream>
#include <GLFW/glfw3.h>


class Mesh {
private:
	std::vector<glm::vec3> verts;
	std::vector<glm::ivec3> faces;
	std::vector<glm::vec3> normals;
	std::vector<glm::vec2> UV;

	void createDefaultCube();
	void clearData();
	void genBuffers();
	
	int posHandle;
	int normHandle;
	int faceHandle;
	int uvHandle;
public:
	Mesh();
	Mesh(const char* path);
	~Mesh();

	int VAO();
	int VBO();
};
