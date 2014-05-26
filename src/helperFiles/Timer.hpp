
#include <map>
#include <glm/glm.hpp>
#include <GLFW/glfw3.h>

class Timer {
private:
	Timer();
	~Timer();
	static std::map<int, glm::dvec3> timers;
public:
	static void startTimer(int ID, double duration);
	static double getTimerDuration(int ID);
	static float getTimerProgress(int ID);
};