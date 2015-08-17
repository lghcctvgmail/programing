DIRS = ch02 ch03 ch04 ch05 ch06 ch07 ch08 ch09 ch10 ch11 ch12 ch13 ch14 ch15 ch16 ch17 chXE
#DIRS = chXE


all:
	$(MAKE) `./systype.sh`

clean:
	for i in $(DIRS); do \
		(cd $$i && $(MAKE) -f `../systype.sh`.mk clean) || exit 1; \
	done


linux:
	for i in $(DIRS); do \
		(cd $$i && $(MAKE) -f linux.mk) || exit 1; \
	done
