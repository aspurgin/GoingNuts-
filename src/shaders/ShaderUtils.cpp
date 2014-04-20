#include "ShaderUtils.hpp"
#include "PhongShader.hpp"

/**
* Default Constructor
*/
ShaderUtils::ShaderUtils() {
}

/**
* This method installs the shaders for use
*
* @param vShaderName the vertex shader
* @param fShaderName the fragment shader
* @return PhongShader or NULL if failed
*/
PhongShader ShaderUtils::InstallPhongShader(const GLchar *vShaderName, const GLchar *fShaderName) {
   GLuint VS; //handles to shader object
   GLuint FS; //handles to frag shader object
   GLint vCompiled; //status
   GLint fCompiled;
   GLint linked;
   int ShadeProg; //Shade prog num

   VS = glCreateShader(GL_VERTEX_SHADER);
   FS = glCreateShader(GL_FRAGMENT_SHADER);

   //load the source
   glShaderSource(VS, 1, &vShaderName, NULL);
   glShaderSource(FS, 1, &fShaderName, NULL);

   //compile shader and print log
   glCompileShader(VS);
   /* check shader status requires helper functions */
   printOpenGLError();
   glGetShaderiv(VS, GL_COMPILE_STATUS, &vCompiled);
   printShaderInfoLog(VS);

   //compile shader and print log
   glCompileShader(FS);
   /* check shader status requires helper functions */
   printOpenGLError();
   glGetShaderiv(FS, GL_COMPILE_STATUS, &fCompiled);
   printShaderInfoLog(FS);

   if (!vCompiled || !fCompiled) {
      printf("Error compiling either shader %s or %s", vShaderName, fShaderName);
      return NULL;
   }

   //create a program object and attach the compiled shader
   ShadeProg = glCreateProgram();
   glAttachShader(ShadeProg, VS);
   glAttachShader(ShadeProg, FS);

   glLinkProgram(ShadeProg);
   /* check shader status requires helper functions */
   printOpenGLError();
   glGetProgramiv(ShadeProg, GL_LINK_STATUS, &linked);
   printProgramInfoLog(ShadeProg);

   glUseProgram(ShadeProg);

   //Set up PhongShader object
   PhongShader phongShader();

   /* get handles to attribute data */
   phongShader.h_aPosition = safe_glGetAttribLocation(ShadeProg, "aPosition");
   phongShader.h_aNormal = safe_glGetAttribLocation(ShadeProg, "aNormal");
   phongShader.h_uProjMatrix = safe_glGetUniformLocation(ShadeProg, "uProjMatrix");
   phongShader.h_uViewMatrix = safe_glGetUniformLocation(ShadeProg, "uViewMatrix");
   phongShader.h_uModelMatrix = safe_glGetUniformLocation(ShadeProg, "uModelMatrix");
   phongShader.h_uMatAmb = safe_glGetUniformLocation(ShadeProg, "uMat.aColor");
   phongShader.h_uMatDif = safe_glGetUniformLocation(ShadeProg, "uMat.dColor");
   phongShader.h_uMatSpec = safe_glGetUniformLocation(ShadeProg, "uMat.sColor");
   phongShader.h_uMatShine = safe_glGetUniformLocation(ShadeProg, "uMat.shine");
   phongShader.h_lightPos = safe_glGetUniformLocation(ShadeProg, "lightPos");
   phongShader.h_cameraPos = safe_glGetUniformLocation(ShadeProg, "cameraPos");

   phongShader.shadeProg = ShadeProg;

   return phongShader;
}
