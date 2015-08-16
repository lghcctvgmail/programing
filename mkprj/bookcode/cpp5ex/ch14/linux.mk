include ../Make.defines.linux

PROGS = tempmemb1 frnd2tmp tempmemb stacktem twod pairs stkoptr1  \
		tmp2tmp manyfrnd tempparm worktest

PROGSEX = use_stui workmi use_stuc worktest

# tempmemb1 frnd2tmp tempmemb pe14-5 studenti stacktem twod pairs winec workermi stkoptr1 use_stui workmi \
#	tmp2tmp worker0 use_stuc studentc manyfrnd tempparm worktest 


all:	${PROGS} ${PROGSEX}

pe14-5: pe14-5.o  
	$(LINK.c) -o $@ $^

use_stui: use_stui.o studenti.o 
	$(LINK.c) -o $@ $^

workmi: workmi.o workermi.o 
	$(LINK.c) -o $@ $^

use_stuc: use_stuc.o studentc.o 
	$(LINK.c) -o $@ $^

worktest: worktest.o worker0.o 
	$(LINK.c) -o $@ $^
	
	
	
clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	

