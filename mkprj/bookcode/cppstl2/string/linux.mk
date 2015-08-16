include ../Make.defines.linux

PROGS = string3 icstring1 stringiter2 string2 stringnumconv1 string1 stringiter1
PROGSEX = 

all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	


