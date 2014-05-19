#include "Drill.hpp"

Drill::Drill() {
   this->strength = 1;
   this->durability = -1;
}

Drill::Drill(int strength) {
   this->strength = strength;
   this->durability = -1;
}

Drill::Drill(int strength, int durability) {
   this->strength = strength;
   this->durability = durability;
}
