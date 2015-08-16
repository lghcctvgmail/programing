include ../Make.defines.linux

PROGS =	condit sumafile more_and and cingolf not or ifelseif jump outfile ifelse cctypes \
	switch if cinfish enum
	
#  
	
all:	${PROGS}

clean:
	rm -f ${PROGS} ${TEMPFILES} file.hole

