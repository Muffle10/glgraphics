all: main.c

main.c: src
  gcc main.c -o main `pkg-config --cflags --include glfw3`

src: 
  gcc src/$(wildcard *.c)
