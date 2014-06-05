#include "EnergyPercentage.hpp"

EnergyPercentage::EnergyPercentage(NutGame* nutGame) {
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

void EnergyPercentage::render() {
   int energy = (int) nutGame->player.getEnergyLeft();

   int onesDigit, tensDigit, hundredsDigit;

   onesDigit = energy % 10;
   energy /= 10;

   tensDigit = energy % 10;
   energy /= 10;

   hundredsDigit = energy % 10;

   if (onesDigit >= 0)
   {
      numbers[onesDigit]->setPositionNumber(0);
      numbers[onesDigit]->render();
   }
   else
   {
      numbers[0]->setPositionNumber(0);
      numbers[0]->render();
   }

   if (tensDigit > 0)
   {
      numbers[tensDigit]->setPositionNumber(1);
      numbers[tensDigit]->render();
   }

   if (hundredsDigit > 0)
   {
      numbers[hundredsDigit]->setPositionNumber(2);
      numbers[hundredsDigit]->render();
   }
}

EnergyPercentage::~EnergyPercentage()
{
   for (int i = 0; i < numbers.size(); ++i)
   {
      delete numbers[i];
   }
   //delete percentSign;
}
