include ../Make.defines.linux

PROGS =  placenew2   placenew1 
PROGSEX = sayings1 sayings2 vegnews vegnewsfixed bank

# sayings1 placenew2 strngbad sayings2 placenew1 vegnews queue strngbadfixed vegnewsfixed \
#	bank string1

all:	${PROGS} ${PROGSEX}

sayings1: sayings1.o string1.o 
	$(LINK.c) -o $@ $^

sayings2: sayings2.o string1.o 
	$(LINK.c) -o $@ $^

vegnews: vegnews.o strngbad.o 
	$(LINK.c) -o $@ $^

vegnewsfixed: vegnewsfixed.o strngbadfixed.o 
	$(LINK.c) -o $@ $^


bank: bank.o queue.o 
	$(LINK.c) -o $@ $^



clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	

