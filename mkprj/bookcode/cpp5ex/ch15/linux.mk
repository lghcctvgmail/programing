include ../Make.defines.linux

PROGS = error2 test error5 error4 rtti1  use_tvfm constcast  \
	rtti2 nested newexcp error3 error1 
PROGSEX = use_tv use_tvfm use_sales

# error2 tvfm test error5 tv error4 rtti1 use_tv use_tvfm constcast use_sales \
# rtti2 nested newexcp error3 error1 sales 


all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

use_tvfm: use_tvfm.o tvfm.o 
	$(LINK.c) -o $@ $^

use_sales: use_sales.o sales.o 
	$(LINK.c) -o $@ $^
	
clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	

