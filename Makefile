# Make file for maze game
CC = g++

# Compiler flags
# -g 				- Flag is used for debugging information to the executable file
# -Wall				- Flag is used to turn on most compiler warnings
# Flags for dll SFML
# -lsfml-graphics 	- Flag is used for SFML graphics module (2D graphics module, sprites, text, shapes...)
# -lsfml-window 	- Flag is used for OpenGl-based windows, and abstractions for events and input handling
# -lsfml-system		- Flag is used base module of SFML, defining various utilities
# Unused but listed as references in case need arises
# Network module: Socket based communication, utilities and higher-level network protocols (HTTP, FTP)
# Audio Module: Sounds, streaming (music or custom sources, recording, spatialization)
CFLAGS = -g -Wall 
SFML_FLAGS = -lsfml-graphics -lsfml-window -lsfml-system
TARGETS = main.o
# The build target

main: main.cpp
	$(CC) $(CFLAGS) -c main.cpp
	$(CC) $(TARGETS) -o mazeGame $(SFML_FLAGS)

# header.o: header.h

clean:
	$(RM) main.o
	$(RM) mazeGame
