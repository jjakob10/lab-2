# the compiler: gcc for C program, define as g++ for C++
CC = gcc
CXX = g++
# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall
LINKING = -lglut -lGL -lGLU
TARGET = *

all:
	$(CXX) $(CFLAGS) -o cores cores.cpp $(LINKING)
	./cores

f:
	$(CXX) $(CFLAGS) -o cores cores-final.cpp $(LINKING)
	./cores

clean:
	$(RM) $(TARGET)

