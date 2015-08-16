include ../Make.defines.linux

PROGS =	 newplace auto   external   static 
PROGSEX = file1 twofile1 usenmsp
	
all:	${PROGS}  ${PROGSEX}

file1: file2.o file1.o

twofile1: twofile1.o twofile2.o
	$(LINK.c) -o $@ $^

usenmsp:usenmsp.o namesp.o
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${PROGSEX} ${TEMPFILES} file.hole

