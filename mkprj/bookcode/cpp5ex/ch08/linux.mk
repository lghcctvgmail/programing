include ../Make.defines.linux

PROGS =	funtemp twoswap left leftover strtref strquote inline filefunc secref twotemps firstref \
	swaps cubes tempover
	
#  
	
all:	${PROGS}

clean:
	rm -f ${PROGS} ${TEMPFILES} file.hole

