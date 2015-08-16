include ../Make.defines.linux

PROGS = refwrap1 unordmultimap1 hashfunc1 forwardlistsplice1 cstylearray1 setcmp1 cstylearray1old \
		set1 unordinspect1 sortset map2 vector1 mapfind1 list1 refsem1 deque1 hashfunc2 multimap1 \
		map1 mapcmp1 setrange1 sortvec unordmultiset1 multiset1 forwardlist1 array1 forwardlistfind1 \
		unordset1
		
PROGSEX = 

#error : promise1
all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}


