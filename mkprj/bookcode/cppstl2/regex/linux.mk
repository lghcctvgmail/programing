include ../Make.defines.linux

PROGS = regex4   regex3 regex1 regex5 regex2
PROGSEX =  

#error :regextokeniter1 regexiter1

all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	


