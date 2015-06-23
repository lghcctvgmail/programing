
SOURCE = $(wildcard *.cpp, ./*.cpp)
OUTFILE = $(addsuffix .out, $(basename $(SOURCE)))

.PHONY: CH03

CH02:$(OUTFILE)
	@echo compile $^ end

%.out:%.cpp
	@echo -n $(dir $<) > $@
	g++ $< -o $@


clean:
	rm -rf $(OUTFILE)




