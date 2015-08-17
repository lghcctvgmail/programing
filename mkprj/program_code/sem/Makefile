CFLAGS=-DLINUX -ansi -I$(WKDIR)/include -Wall -D_GNU_SOURCE $(EXTRA)
TEMPFILES=core core.* *.o temp.* *.out typescript*

PROGS =	read write

all:	${PROGS}

read: sem.o read.o 
		gcc -g -o $@ $^

write: sem.o write.o
		gcc -g -o $@ $^
		
clean:
	rm -f ${PROGS} ${TEMPFILES}

