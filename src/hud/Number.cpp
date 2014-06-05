#include "Number.hpp"

void Number::setPositionNumber(int pos)
{
	switch (pos)
	{
		case 0:
			this->position = glm::vec3(11.2,-7.1,0);
			break;
		case 1:
			this->position = glm::vec3(10.8,-7.1,0);
			break;
		case 2:
			this->position = glm::vec3(10.4,-7.1,0);
			break;
		default:
			this->position = glm::vec3(11.6,-7,0);
			break;			
	}
}