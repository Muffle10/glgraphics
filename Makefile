main: main.c
	gcc main.c -o main `pkg-config --cflags --libs glfw3` -Iinclude/ -lglad -Llib/
