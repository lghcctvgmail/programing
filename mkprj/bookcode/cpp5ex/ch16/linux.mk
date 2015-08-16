include ../Make.defines.linux

PROGS = multmap vect2 functor hangman listrmv setops vect3 inserts copyit funadap strgstl \
	str1 vect1 toobig strfile usealgo valvect vslice list str2
PROGSEX = 

# multmap vect2 functor hangman listrmv setops vect3 inserts copyit funadap strgstl str1 vect1 
#toobig strfile usealgo valvect vslice list str2


all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

	
	
	
clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	

