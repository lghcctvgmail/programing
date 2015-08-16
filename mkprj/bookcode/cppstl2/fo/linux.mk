include ../Make.defines.linux

PROGS = sort1 lambda2 compose3 fopow1 bind1 bind2 sequence2 lambda5 lambda4 removeif1 lambda3 \
		lambda6 foreach3 sequence1
PROGSEX = 

all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	


