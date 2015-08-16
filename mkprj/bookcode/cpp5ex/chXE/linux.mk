include ../Make.defines.linux

PROGS = memb_pt
PROGSEX = 

all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

	
clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	

