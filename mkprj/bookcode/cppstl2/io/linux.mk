include ../Make.defines.linux

PROGS = cat2 inbuf1 streambuffer1 cat1 outbuf1i18n outbuf3 charcat1 ignore1 streamredirect1 \
		outbuf2  sum1 copy1 countlines1 sstream2 outbuf1 streambuffer2 fstream2 \
		io1 sstream1 ignore2 copy2 fstream1 sum2 charcat2 streamreadwrite1
PROGSEX =  

#error :timemanipulator1

all:	${PROGS} ${PROGSEX}

use_tv: use_tv.o tv.o 
	$(LINK.c) -o $@ $^

clean:
	rm -f ${PROGS} ${TEMPFILES} ${PROGSEX}
	


