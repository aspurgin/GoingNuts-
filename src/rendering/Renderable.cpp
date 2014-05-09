#include "Renderable.hpp"


Renderable::Renderable() {
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   mat = 0;
   ang = 0;
}

