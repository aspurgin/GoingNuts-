#include "DepthGuage.hpp"


DepthGuage::DepthGuage(NutGame* nutGame) {
   this->nutGame = nutGame;
   ones = new DepthWheel(Assets::WHITE_DEPTH_WHEEL_T, glm::vec3(1.2, 0.0, 0.0));
   tens = new DepthWheel(Assets::BLACK_DEPTH_WHEEL_T, glm::vec3(0.9, 0.0, 0.0));
   hundreds = new DepthWheel(Assets::BLACK_DEPTH_WHEEL_T, glm::vec3(0.6, 0.0, 0.0));
   thousands = new DepthWheel(Assets::BLACK_DEPTH_WHEEL_T, glm::vec3(0.3, 0.0, 0.0));
   tenThousands = new DepthWheel(Assets::BLACK_DEPTH_WHEEL_T, glm::vec3(0.0, 0.0, 0.0));
}

DepthGuage::~DepthGuage() {
   delete ones;
   delete tens;
   delete hundreds;
   delete thousands;
   delete tenThousands;
}

void DepthGuage::render() {
   //Update the state
   int score = nutGame->getScore();
   int onesDigit, tensDigit, hundredsDigit, thousandsDigit, tenThousandsDigit;

   onesDigit = score % 10;
   score /= 10;

   tensDigit = score % 10;
   score /= 10;

   hundredsDigit = score % 10;
   score /= 10;

   thousandsDigit = score % 10;
   score /= 10;

   tenThousandsDigit = score % 10;

   ones->set(onesDigit);
   tens->set(tensDigit);
   hundreds->set(hundredsDigit);
   thousands->set(thousandsDigit);
   tenThousands->set(tenThousandsDigit);

   //Render
   ones->render();
   tens->render();
   hundreds->render();
   thousands->render();
   tenThousands->render();
}

void DepthGuage::setModel() {

}
