include ../Make.defines.linux

PROGS = timeput   numput numget moneymanipulator   \
		loc1  wstring2string 
PROGSEX = 

#error moneypunct wstring2utf8 germanbool timeget wbuffer loc2

all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	


