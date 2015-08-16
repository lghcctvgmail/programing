include ../Make.defines.linux

PROGS =	compstr1 forstr2 block textin4 express plus_one while dowhile forstr1 formore textin3 \
	forloop num_test compstr2 bigstep nested waiting equal textin1 textin2
	
#  
	
all:	${PROGS}

savedid: savedid.o
		$(LINK.c) -o savedid savedid.o $(LDLIBS)

clean:
	rm -f ${PROGS} ${TEMPFILES} file.hole

