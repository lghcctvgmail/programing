include ../Make.defines.linux

PROGS = minmax1 chrono1 weakptr1 clock1 sharedptr1 tuple1 chrono2 pair1 ratio1 limits1 weakptr2 \
		sharedptr2  timepoint1 tuple2 enableshared1 uniqueptr1
PROGSEX = 
#error :sharedptr3

all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	


