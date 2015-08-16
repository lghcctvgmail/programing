include ../Make.defines.linux

PROGS =   
PROGSEX = usetime0 usetime1 usetime2 usetime3 stone stone1

# usetime1 usetime2 vect mytime1 mytime3 stone1 mytime2 mytime0 randwalk usetime3 stonewt \
#	usetime0 stonewt1 stone
all:	${PROGS} ${PROGSEX}

usetime0: usetime0.o mytime0.o 
	$(LINK.c) -o $@ $^

usetime1: usetime1.o mytime1.o 
	$(LINK.c) -o $@ $^

usetime2: usetime2.o mytime2.o 
	$(LINK.c) -o $@ $^

usetime3:usetime3.o mytime3.o 
	$(LINK.c) -o $@ $^

stone1: stone1.o stonewt1.o 
	$(LINK.c) -o $@ $^

stone: stone.o stonewt.o 
	$(LINK.c) -o $@ $^
	
randwalk: randwalk.o vect.o 
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	

