
CC=gcc

.c.o:
	gcc -c $^

test: test.o
	@echo $^-$<-$@
	$(CC) -o $@ $^ 


clean:
	rm -rf *.o *.d test