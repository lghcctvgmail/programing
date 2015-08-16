include ../Make.defines.linux

PROGS = defaults cinexcp strin truncate width showpt write get_fun iomanip check_it fill \
	random count strout setf fileio manip realworld setf2 precise append binary peeker
PROGSEX = 

# defaults cinexcp strin truncate width showpt write get_fun iomanip check_it fill \
#	random count strout setf fileio manip realworld setf2 precise append binary peeker


all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

	
	
	
clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	

