CFLAGS=
cu-fastblur: obj/cu-fastblur.o
	nvcc $(CFLAGS) obj/cu-fastblur.o -o cu-fastblur -lm

obj/cu-fastblur.o: cu-fastblur.cu
	nvcc -c $(CFLAGS) cu-fastblur.cu -o obj/fastblur.o

fastblur: obj/fastblur.o
	gcc $(CFLAGS) obj/fastblur.o -o fastblur -lm


obj/fastblur.o: fastblur.c
	gcc -c $(CFLAGS) fastblur.c -o obj/fastblur.o 


clean:
	rm -f obj/* fastblur output.png
