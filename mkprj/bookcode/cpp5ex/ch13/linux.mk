include ../Make.defines.linux

PROGS =     
PROGSEX = usett0 usett1 usebrass1 usebrass2 usebrass3

# tabtenn1 acctabc usett0 usebrass3 usebrass2 brass tabtenn0 usedma usett1 usebrass1 dma worktest 
#

all:	${PROGS} ${PROGSEX}

usett0: usett0.o tabtenn0.o 
	$(LINK.c) -o $@ $^

usett1: usett1.o tabtenn1.o 
	$(LINK.c) -o $@ $^

usebrass1: usebrass1.o brass.o 
	$(LINK.c) -o $@ $^

usebrass2: usebrass2.o brass.o 
	$(LINK.c) -o $@ $^

usebrass3: usebrass3.o acctabc.o 
	$(LINK.c) -o $@ $^

usedma: usedma.o dma.o 
	$(LINK.c) -o $@ $^
		

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	

