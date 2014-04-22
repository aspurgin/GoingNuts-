SOURCES=$(shell find . -name "*.cpp")
OBJECTS=$(SOURCES:%.cpp=%.o)
TARGET=foo
LIBS= -lGL -lGLU -lGLEW -lglfw3 -lX11 -lXrandr

DEBUG=1
CPPFLAGS+= -include "`pwd`/src/helperFiles/Util.hpp" -DLOG_LEVEL=$(DEBUG) -g


.PHONY: all
all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(LINK.cpp) $^ $(LIBS)  -o $@

.PHONY: clean
clean:
	rm -f $(TARGET) $(OBJECTS)
