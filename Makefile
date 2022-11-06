all: main
main: main.c
	gcc main.c -o main.o `pkg-config --cflags --libs glfw3` -Iinclude/ -lglad -Llib/

compile: glad.c
	gcc -c -o glad.o glad.c -Iinclude/
link: compile
	ar rcs libglad.a glad.o
clean: link
	rm glad.o
install: clean link
	mkdir lib
	mv libglad.a lib

