include ../Make.defines.linux

PROGS = bitset2 priorityqueue1 queue1 queue2 stack1 bitset1 stack2
PROGSEX = 

all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	


