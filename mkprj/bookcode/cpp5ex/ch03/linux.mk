include ../Make.defines.linux

PROGS =	arith assign bondini chartype divide exceed floatnum fltadd hexoct2 limits \
		modulus morechar typecast

all:	${PROGS}

savedid: savedid.o
		$(LINK.c) -o savedid savedid.o $(LDLIBS)

clean:
	rm -f ${PROGS} ${TEMPFILES} file.hole

