include ../Make.defines.linux

PROGS = remove1 sort1 algo1 set1 vector1 unordmultiset2 list2 fo1  unordmap1 list1 assoarray1 \
		remove4 bind1 iterbug foreach2 add1 remove2 transform1 deque1 multimap1 algo1old ioiter1 \
		lambda1 remove3 copybug copy1 list1old unordmultiset1 multiset1 forwardlist1 foreach1 \
		reviter1 array1 copy2 prime1 find1
PROGSEX =  

#error :sort2

all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	


