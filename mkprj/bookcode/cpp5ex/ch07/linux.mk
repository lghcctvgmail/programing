include ../Make.defines.linux

PROGS =	protos twoarg fun_ptr strctfun ruler recur strctptr travel lotto calling arrfun4 arrfun1 \
	strgback strgfun topfive arrfun3 arrfun2
	
#  
	
all:	${PROGS}

clean:
	rm -f ${PROGS} ${TEMPFILES} file.hole

