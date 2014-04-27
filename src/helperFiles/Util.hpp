#pragma once

#include <iostream>

#define LOG_ERROR 0 // Bad stuff happened
#define LOG_WARN  1 // Non-ideal stuff happened
#define LOG_INFO  2 // Interesting stuff happened
#define LOG_DEBUG 3 // To be used where needed
#define LOG_TRACE 4 // Very high-volume items

#ifndef LOG_LEVEL
#define LOG_LEVEL 1
#endif

#define LOG(x, y) std::cerr << "[" << x << "] " << __FILE__ << ":" << __LINE__ << " - " << y << "\n"

#if LOG_LEVEL >= LOG_ERROR
	#define ERROR(x) LOG("ERROR", x)
#else
	#define ERROR(x) ((void)0)
#endif

#if LOG_LEVEL >= LOG_WARN
	#define WARN(x) LOG("WARN", x)
#else
	#define WARN(x) ((void)0)
#endif

#if LOG_LEVEL >= LOG_INFO
	#define INFO(x) LOG("INFO", x)
#else
	#define INFO(x) ((void)0)
#endif

#if LOG_LEVEL >= LOG_DEBUG
	#define DEBUG(x) LOG("DEBUG", x)
#else
	#define DEBUG(x) ((void)0)
#endif

#if LOG_LEVEL >= LOG_TRACE
	#define TRACE(x) LOG("TRACE", x)
#else
	#define TRACE(x) ((void)0)
#endif