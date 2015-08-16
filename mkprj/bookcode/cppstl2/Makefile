include Make.defines.linux

DIRS =algo concurrency cont contadapt fo i18n io iter lang num regex stl string util
#DIRS = util
#error:alloc

all:
	$(MAKE) `./systype.sh`

clean:
	for i in $(DIRS); do \
		(cd $$i && $(MAKE) -f `../systype.sh`.mk clean) || exit 1; \
	done

linux:
	for i in $(DIRS); do \
		(cd $$i && $(MAKE) -f linux.mk CFLAGS=c++11 ) || exit 1; \
	done
