#include "LevelNumber.hpp"

LevelNumber::LevelNumber(NutGame* nutGame) {
  this->nutGame = nutGame;
  numbers.push_back(new Number0());
  numbers.push_back(new Number1());
  numbers.push_back(new Number2());
  numbers.push_back(new Number3());
  numbers.push_back(new Number4());
  numbers.push_back(new Number5());
  numbers.push_back(new Number6());
  numbers.push_back(new Number7());
  numbers.push_back(new Number8());
  numbers.push_back(new Number9());

  this->nutGame = nutGame;
}

void LevelNumber::render() {
   int level = nutGame->getLevel();

   int onesDigit, tensDigit;

   onesDigit = level % 10;
   level /= 10;

   tensDigit = level % 10;

   if (onesDigit > 0)
   {
     numbers[onesDigit]->setPosition(glm::vec3(-11.4, 5.1, 0));
     numbers[onesDigit]->setScale(0.2,0.2,0.2);
     numbers[onesDigit]->render();
   }

   if (tensDigit > 0)
   {
      numbers[tensDigit]->setPosition(glm::vec3(-12.4, 5.1, 0));
      numbers[tensDigit]->setScale(0.2,0.2,0.2);
      numbers[tensDigit]->render();
   }
}

LevelNumber::~LevelNumber()
{
   for (int i = 0; i < numbers.size(); ++i)
   {
      delete numbers[i];
   }
}
