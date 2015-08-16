include ../Make.defines.linux

PROGS = inserter1 frontinserter1 distance1 ostreamiter1 itercategory1 reviter4 backinserter1 \
		istreamiter1 reviter2 advance2 iterswap1 advance1 reviter1 reviter3 assoiter1
PROGSEX =  

#error :

all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	


