include ../Make.defines.linux

#PROGS =	stocks       
PROGSEX = stacker stocks usestok1 usestok2
# stack stock1 usestok2 stock2 stacker usestok1
all:	${PROGS} ${PROGSEX}

stocks: stocks.o stack.o 
	$(LINK.c) -o $@ $^
	
stacker:stocks.o 
	$(LINK.c) -o $@ $^

usestok1:stock1.o usestok1.o
	$(LINK.c) -o $@ $^

usestok2:usestok2.o stock2.o
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	

