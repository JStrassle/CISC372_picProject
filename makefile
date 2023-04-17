
image:image.c image.h
	gcc -g image.c -o image -lm
openmp:image_openmp.c image.h
	gcc -fopenmp -g image_openmp.c -o image_openmp -lm
pthread:image_pthread.c image.h
	gcc -g image_pthread.c -o image_pthread -lm -lthread
clean:
	rm -f image output.png image_openmp output_openmp.png image_pthread output_pthread.png 
