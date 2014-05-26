#include "Timer.hpp"

#define START 0
#define END 1
#define DUR 2

std::map<int, glm::dvec3> Timer::timers;

Timer::Timer(){

}
Timer::~Timer(){

}

void Timer::startTimer(int ID, double duration){
	double start = glfwGetTime();
	double end = start + duration;
	timers[ID] = glm::dvec3(start, end, duration);
}

double Timer::getTimerDuration(int ID){
	if(timers.find(ID) == timers.end()){
		return -1;
	} else {
		glm::dvec3 info = timers[ID];
		double now = glfwGetTime();
		if(now > info[END]) {
			return -1;
		} else {
			return now - info[START];
		}
	}
}

float Timer::getTimerProgress(int ID){
	if(timers.find(ID) == timers.end()){
		return -1;
	} else {
		glm::dvec3 info = timers[ID];
		double now = glfwGetTime();
		if(now > info[END]) {
			return -1;
		} else {
			return (float)(now - info[START]) / info[DUR];
		}
	}
}