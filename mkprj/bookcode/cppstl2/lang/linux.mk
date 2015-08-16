include ../Make.defines.linux

PROGS = lambda1
PROGSEX =  

#error :

all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	


