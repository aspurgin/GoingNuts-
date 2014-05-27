#include "ShaderUtils.hpp"

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
PhongShader ShaderUtils::installPhongShader(const GLchar *vShaderName, const GLchar *fShaderName) {
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
      throw(1);
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
   PhongShader phongShader;

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
   phongShader.h_lightColor = safe_glGetUniformLocation(ShadeProg, "lightColor");
   phongShader.shadeProg = ShadeProg;

   glUseProgram(0);
   return phongShader;
}

CellShader ShaderUtils::installCellShader(const GLchar *vShaderName, const GLchar *fShaderName) {
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
      throw(1);
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
   CellShader cellShader;

   /* get handles to attribute data */
   cellShader.h_aPosition = safe_glGetAttribLocation(ShadeProg, "aPosition");
   cellShader.h_aNormal = safe_glGetAttribLocation(ShadeProg, "aNormal");
   cellShader.h_uProjMatrix = safe_glGetUniformLocation(ShadeProg, "uProjMatrix");
   cellShader.h_uViewMatrix = safe_glGetUniformLocation(ShadeProg, "uViewMatrix");
   cellShader.h_uModelMatrix = safe_glGetUniformLocation(ShadeProg, "uModelMatrix");
   cellShader.h_uMatAmb = safe_glGetUniformLocation(ShadeProg, "uMat.aColor");
   cellShader.h_uMatDif = safe_glGetUniformLocation(ShadeProg, "uMat.dColor");
   cellShader.h_uMatSpec = safe_glGetUniformLocation(ShadeProg, "uMat.sColor");
   cellShader.h_uMatShine = safe_glGetUniformLocation(ShadeProg, "uMat.shine");
   cellShader.h_lightPos = safe_glGetUniformLocation(ShadeProg, "lightPos");
   cellShader.h_cameraPos = safe_glGetUniformLocation(ShadeProg, "cameraPos");
   cellShader.h_uCasterProj = safe_glGetUniformLocation(ShadeProg, "uCasterProj");
   cellShader.h_uCasterView = safe_glGetUniformLocation(ShadeProg, "uCasterView");
   cellShader.h_uDepthMapSampler = safe_glGetUniformLocation(ShadeProg, "depth_map");
   cellShader.shadeProg = ShadeProg;

   glUseProgram(0);
   return cellShader;
}

CellShaderTexture ShaderUtils::installCellShaderTexture(const GLchar *vShaderName, const GLchar *fShaderName) {
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
      throw(1);
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
   CellShaderTexture cellShaderTexture;

   /* get handles to attribute data */
   cellShaderTexture.h_aPosition = safe_glGetAttribLocation(ShadeProg, "aPosition");
   cellShaderTexture.h_aNormal = safe_glGetAttribLocation(ShadeProg, "aNormal");
   cellShaderTexture.h_uProjMatrix = safe_glGetUniformLocation(ShadeProg, "uProjMatrix");
   cellShaderTexture.h_uViewMatrix = safe_glGetUniformLocation(ShadeProg, "uViewMatrix");
   cellShaderTexture.h_uModelMatrix = safe_glGetUniformLocation(ShadeProg, "uModelMatrix");
   cellShaderTexture.h_uMatAmb = safe_glGetUniformLocation(ShadeProg, "uMat.aColor");
   cellShaderTexture.h_uMatDif = safe_glGetUniformLocation(ShadeProg, "uMat.dColor");
   cellShaderTexture.h_uMatSpec = safe_glGetUniformLocation(ShadeProg, "uMat.sColor");
   cellShaderTexture.h_uMatShine = safe_glGetUniformLocation(ShadeProg, "uMat.shine");
   cellShaderTexture.h_lightPos = safe_glGetUniformLocation(ShadeProg, "lightPos");
   cellShaderTexture.h_cameraPos = safe_glGetUniformLocation(ShadeProg, "cameraPos");
   cellShaderTexture.h_myTextureSampler  = glGetUniformLocation(ShadeProg, "myTextureSampler");
   cellShaderTexture.h_vertexUV = glGetAttribLocation(ShadeProg, "vertexUV");
   cellShaderTexture.shadeProg = ShadeProg;

   glUseProgram(0);
   return cellShaderTexture;
}

FlatTextureShader ShaderUtils::installFlatTextureShader(const GLchar *vShaderName, const GLchar *fShaderName) {
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
      throw(1);
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
   FlatTextureShader flatTextureShader;

   /* get handles to attribute data */
   flatTextureShader.h_aPosition = safe_glGetAttribLocation(ShadeProg, "aPosition");
   flatTextureShader.h_aNormal = safe_glGetAttribLocation(ShadeProg, "aNormal");
   flatTextureShader.h_uProjMatrix = safe_glGetUniformLocation(ShadeProg, "uProjMatrix");
   flatTextureShader.h_uViewMatrix = safe_glGetUniformLocation(ShadeProg, "uViewMatrix");
   flatTextureShader.h_uModelMatrix = safe_glGetUniformLocation(ShadeProg, "uModelMatrix");
   flatTextureShader.h_lightPos = safe_glGetUniformLocation(ShadeProg, "lightPos");
   flatTextureShader.h_cameraPos = safe_glGetUniformLocation(ShadeProg, "cameraPos");
   flatTextureShader.h_myTextureSampler  = glGetUniformLocation(ShadeProg, "myTextureSampler");
   flatTextureShader.h_vertexUV = glGetAttribLocation(ShadeProg, "vertexUV");
   flatTextureShader.shadeProg = ShadeProg;

   glUseProgram(0);
   return flatTextureShader;
}


DebugShadowShader ShaderUtils::installDebugShadowShader(const GLchar* vShaderName, const GLchar* fShaderName) {
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
      throw(1);
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
   DebugShadowShader debugShadowShader;

   /* get handles to attribute data */
   debugShadowShader.h_aPosition = safe_glGetAttribLocation(ShadeProg, "vp");
   debugShadowShader.h_tPos = safe_glGetAttribLocation(ShadeProg, "vt");
   debugShadowShader.shadeProg = ShadeProg;

   glUseProgram(0);
   return debugShadowShader;
}

LightMapShader ShaderUtils::installLightMapShader(const GLchar* vShaderName, const GLchar* fShaderName) {
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
      throw(1);
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
   LightMapShader lightMapShader;

   /* get handles to attribute data */
   lightMapShader.h_aPosition = safe_glGetAttribLocation(ShadeProg, "vp");
   lightMapShader.h_uProjMatrix = safe_glGetUniformLocation(ShadeProg, "uProjMatrix");
   lightMapShader.h_uViewMatrix = safe_glGetUniformLocation(ShadeProg, "uViewMatrix");
   lightMapShader.h_uModelMatrix = safe_glGetUniformLocation(ShadeProg, "uModelMatrix");

   lightMapShader.shadeProg = ShadeProg;

   glUseProgram(0);
   return lightMapShader;
}

PhongTextureShader ShaderUtils::installPhongTextureShader(const GLchar *vShaderName, const GLchar *fShaderName) {
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
      throw(1);
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
   PhongTextureShader phongTextureShader;

   /* get handles to attribute data */
   phongTextureShader.h_aPosition = safe_glGetAttribLocation(ShadeProg, "aPosition");
   phongTextureShader.h_aNormal = safe_glGetAttribLocation(ShadeProg, "aNormal");
   phongTextureShader.h_aTangent = safe_glGetAttribLocation(ShadeProg, "aTangent");
   phongTextureShader.h_aBitangent = safe_glGetAttribLocation(ShadeProg, "aBitangent");
   phongTextureShader.h_uProjMatrix = safe_glGetUniformLocation(ShadeProg, "uProjMatrix");
   phongTextureShader.h_uViewMatrix = safe_glGetUniformLocation(ShadeProg, "uViewMatrix");
   phongTextureShader.h_uModelMatrix = safe_glGetUniformLocation(ShadeProg, "uModelMatrix");
   phongTextureShader.h_uMatAmb = safe_glGetUniformLocation(ShadeProg, "uMat.aColor");
   phongTextureShader.h_uMatDif = safe_glGetUniformLocation(ShadeProg, "uMat.dColor");
   phongTextureShader.h_uMatSpec = safe_glGetUniformLocation(ShadeProg, "uMat.sColor");
   phongTextureShader.h_uMatShine = safe_glGetUniformLocation(ShadeProg, "uMat.shine");
   phongTextureShader.h_lightPos = safe_glGetUniformLocation(ShadeProg, "lightPos");
   phongTextureShader.h_cameraPos = safe_glGetUniformLocation(ShadeProg, "cameraPos");
   phongTextureShader.h_lightColor = safe_glGetUniformLocation(ShadeProg, "lightColor");
   phongTextureShader.h_vertexUV = glGetAttribLocation(ShadeProg, "vertexUV");
   phongTextureShader.h_colorTextureSampler  = glGetUniformLocation(ShadeProg, "colorTextureSampler");
   phongTextureShader.h_normalTextureSampler  = glGetUniformLocation(ShadeProg, "normalTextureSampler");
   phongTextureShader.shadeProg = ShadeProg;

   glUseProgram(0);
   return phongTextureShader;
}

BloomShader ShaderUtils::installBloomShaders(const GLchar *vBrightShaderName, const GLchar *fBrightShaderName,
                                             const GLchar *vBlurShaderName, const GLchar *fBlurShaderName,
                                             const GLchar *vCompositeShaderName, const GLchar *fCompositeShaderName) {
   GLuint VS; //handles to shader object
   GLuint FS; //handles to frag shader object
   GLint vCompiled; //status
   GLint fCompiled;
   GLint linked;
   int ShadeProg; //Shade prog nums
   BloomShader bloomShader;

   // INSTALL BRIGHT SHADERS
   VS = glCreateShader(GL_VERTEX_SHADER);
   FS = glCreateShader(GL_FRAGMENT_SHADER);

   //load the source
   glShaderSource(VS, 1, &vBrightShaderName, NULL);
   glShaderSource(FS, 1, &fBrightShaderName, NULL);

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
      printf("Error compiling either shader %s or %s", vBrightShaderName, fBrightShaderName);
      throw(1);
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

   /* get handles to attribute data */
   bloomShader.h_aPositionBright = safe_glGetAttribLocation(ShadeProg, "aPosition");
   bloomShader.h_uProjMatrixBright = safe_glGetUniformLocation(ShadeProg, "uProjMatrix");
   bloomShader.h_uViewMatrixBright = safe_glGetUniformLocation(ShadeProg, "uViewMatrix");
   bloomShader.h_uModelMatrixBright = safe_glGetUniformLocation(ShadeProg, "uModelMatrix");
   bloomShader.shadeProgBright = ShadeProg;
   // END BRIGHT SHADER INSTALLATION


   // START BLUR SHADER INSTALLATION
   VS = glCreateShader(GL_VERTEX_SHADER);
   FS = glCreateShader(GL_FRAGMENT_SHADER);

   //load the source
   glShaderSource(VS, 1, &vBlurShaderName, NULL);
   glShaderSource(FS, 1, &fBlurShaderName, NULL);

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
      printf("Error compiling either shader %s or %s", vBlurShaderName, fBlurShaderName);
      throw(1);
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

   /* get handles to attribute data */
   bloomShader.h_aPositionBlur = safe_glGetAttribLocation(ShadeProg, "aPosition");
   bloomShader.h_uProjMatrixBlur = safe_glGetUniformLocation(ShadeProg, "uProjMatrix");
   bloomShader.h_uViewMatrixBlur = safe_glGetUniformLocation(ShadeProg, "uViewMatrix");
   bloomShader.h_uModelMatrixBlur = safe_glGetUniformLocation(ShadeProg, "uModelMatrix");
   bloomShader.h_myTextureSamplerBlur  = glGetUniformLocation(ShadeProg, "myTextureSampler");
   bloomShader.shadeProgBlur = ShadeProg;
   // END BLUR SHADER INSTALLATION


   // START COMPOSITE SHADER INSTALLATION
   VS = glCreateShader(GL_VERTEX_SHADER);
   FS = glCreateShader(GL_FRAGMENT_SHADER);

   //load the source
   glShaderSource(VS, 1, &vCompositeShaderName, NULL);
   glShaderSource(FS, 1, &fCompositeShaderName, NULL);

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
      printf("Error compiling either shader %s or %s", vCompositeShaderName, fCompositeShaderName);
      throw(1);
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

   /* get handles to attribute data */
   bloomShader.h_aPositionComposite = safe_glGetAttribLocation(ShadeProg, "aPosition");
   bloomShader.h_uProjMatrixComposite = safe_glGetUniformLocation(ShadeProg, "uProjMatrix");
   bloomShader.h_uViewMatrixComposite = safe_glGetUniformLocation(ShadeProg, "uViewMatrix");
   bloomShader.h_uModelMatrixComposite = safe_glGetUniformLocation(ShadeProg, "uModelMatrix");
   bloomShader.h_myTextureSamplerComposite  = glGetUniformLocation(ShadeProg, "myTextureSampler");
   bloomShader.h_uMatAmb = safe_glGetUniformLocation(ShadeProg, "uMat.aColor");
   bloomShader.h_uMatDif = safe_glGetUniformLocation(ShadeProg, "uMat.dColor");
   bloomShader.h_uMatSpec = safe_glGetUniformLocation(ShadeProg, "uMat.sColor");
   bloomShader.h_uMatShine = safe_glGetUniformLocation(ShadeProg, "uMat.shine");
   bloomShader.h_lightPosComposite = safe_glGetUniformLocation(ShadeProg, "lightPos");
   bloomShader.h_cameraPosComposite = safe_glGetUniformLocation(ShadeProg, "cameraPos");
   bloomShader.h_aNormalComposite = safe_glGetAttribLocation(ShadeProg, "aNormal");
   bloomShader.shadeProgComposite = ShadeProg;
   // END COMPOSITE SHADER INSTALLATION

   glUseProgram(0);
   return bloomShader;
}
   
