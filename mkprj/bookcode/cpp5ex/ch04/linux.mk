include ../Make.defines.linux

PROGS =	arrstruc strtype1 use_new delete instr1 structur address numstr init_ptr \
	newstrct strtype4 ptrstr instr2 strtype2 strings assgn_st addpntrs arrayone \
	pointer arraynew strtype3 enum instr3
	
all:	${PROGS}

savedid: savedid.o
		$(LINK.c) -o savedid savedid.o $(LDLIBS)

clean:
	rm -f ${PROGS} ${TEMPFILES} file.hole

