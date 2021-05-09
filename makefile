CFLAGS=
cudablur: obj/cudablur.o
	nvcc $(CFLAGS) obj/cudablur.o -o cudablur -lm

obj/cudablur.o: cudablur.cu
	nvcc -c $(CFLAGS) cudablur.cu -o obj/cudablur.o

fastblur: obj/fastblur.o
	gcc $(CFLAGS) obj/fastblur.o -o fastblur -lm


obj/fastblur.o: fastblur.c
	gcc -c $(CFLAGS) fastblur.c -o obj/fastblur.o 

test: cudablur
	./cudablur gauss.jpg 50

clean:
	rm -f obj/* fastblur cudablur output.png
