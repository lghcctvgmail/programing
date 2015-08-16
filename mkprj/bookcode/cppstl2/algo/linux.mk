include ../Make.defines.linux

PROGS = move1 minmax1 unique2 remove1 innerproduct1 unique3 search1 allanynone1 sort1 issorted1 \
		count1 shuffle1 adjacentfind1 ispermutation1 accumulate1 adjacentdiff1 partialsort1 reverse1 \
		merge1 searchn1 find2 bounds1 ispartitioned1 swapranges1 replace2 fill1 copy3 sort2 rotate1 \
		findend1 foreach2 remove2 unique1 partition1 transform1 lexicocmp1 search2 partialsort2 heap1 \
		partitioncopy1 inplacemerge1 copy1 replace1 isheap1 includes1 mismatch1 iota1 rotate2 equal1 \
		randomshuffle1 sorted1 equalrange1 foreach1 nthelement1 copy2 permutation1 transform2 \
		binarysearch1 partialsum1 foreach3 generate1 relabs1 find1 findof1
PROGSEX = 

all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	


