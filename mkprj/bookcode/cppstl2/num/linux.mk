include ../Make.defines.linux

PROGS = valarray2 complex1 complex2 indirectarray1 slice1 maskarray1 random1 gslice1 random2 dist1 valarray1
PROGSEX =  

#error :

all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	


