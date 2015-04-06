
MODULES = ./ch02 
CLEANMODULES = $(addsuffix _RM, $(MODULES))

all:$(MODULES)
	@echo compile each dir ...

aaa:
	@echo aaaaaaaaaaaa

$(MODULES):
	echo now we jump into next directrory $@
	make --directory=$@

PHONY: all clean $(MODULES) $(CLEANMODULES)

clean:$(CLEANMODULE)
$(CLEANMODULE):
	make --directory=$@ clean






