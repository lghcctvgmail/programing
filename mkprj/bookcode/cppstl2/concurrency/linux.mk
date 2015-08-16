include ../Make.defines.linux

PROGS = atomics1 async1 condvar1 mutex1 sharedfuture1 async2 thread1 async3  condvar2
PROGSEX = 

#error : promise1
all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}


