CC = g++
CFLAGS = -Wall -g
LDFLAGS = -lglfw -lGL
TARGETS = red_triangle blue_square

all: $(TARGETS)

red_triangle: red_triangle.cpp glad.c
	$(CC) $(CFLAGS) red_triangle.cpp glad.c -o red_triangle $(LDFLAGS)

blue_square: blue_square.cpp glad.c
	$(CC) $(CFLAGS) blue_square.cpp glad.c -o blue_square $(LDFLAGS)

clean:
	rm -f $(TARGETS)
