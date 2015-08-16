include ../Make.defines.linux
EXTRA=-DDEBUG

PROGS = ch02
#HDRS = call.h

all: ${PROGS} 

carrots.out: carrots.o 
	$(LINK.c) -o $@ $<
	@echo compile $^ $< $@ 22end

ch02:	carrots.out
		echo compile $(PROG) end ...
#		$(CC) $(CFLAGS) -o call main.o call.o put.o take.o takeput.o escape.o loop.poll.o ../sockets/clconn.o $(LDFLAGS) $(LDLIBS)

clean:
	rm -f ${PROGS} ${TEMPFILES} *.o

