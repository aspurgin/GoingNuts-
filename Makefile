SOURCES=$(shell find . -name "*.cpp")
OBJECTS=$(SOURCES:%.cpp=%.o)
TARGET=foo
LIBS= -lGL -lGLU -lGLEW -lglfw3 -lX11 -lXrandr

.PHONY: all
all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(LINK.cpp) $^ $(LIBS) -o $@

.PHONY: clean
clean:
	rm -f $(TARGET) $(OBJECTS)
