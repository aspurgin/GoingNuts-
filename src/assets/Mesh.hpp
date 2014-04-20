#pragma once

#include <vector>
#include <glm/glm.hpp>
#include <assimp/cimport.h>
#include <assimp/scene.h>
#include <assimp/postprocess.h>



class Mesh {
private:
	std::vector<glm::vec3> verts;
	std::vector<glm::vec3> faces;
	std::vector<glm::vec3> normals;
	std::vector<glm::vec3> UV;
public:
	Mesh();
	Mesh(const char* path);
	~Mesh();

	int VAO();
	int VBO();
};
