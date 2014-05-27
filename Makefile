SOURCES=$(shell find . -name "*.cpp")
OBJECTS=$(SOURCES:%.cpp=%.o)
TARGET=DeezNuts
LIBS= -lGL -lGLU -lGLEW -lglfw3 -lX11 -lXrandr -lassimp -lfmodex-4.44.33 -lSOIL

DEBUG=1
CPPFLAGS+= -include "`pwd`/src/helperFiles/Util.hpp" -Wno-write-strings -DLOG_LEVEL=$(DEBUG) -O3 -pg -g


.PHONY: all
all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(LINK.cpp) $^ $(LIBS)  -o $@

.PHONY: clean
clean:
	rm -f $(TARGET) $(OBJECTS)
