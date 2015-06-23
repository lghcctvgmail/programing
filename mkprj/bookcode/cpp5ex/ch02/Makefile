
SOURCE = $(wildcard *.cpp, ./*.cpp)
OUTFILE = $(addsuffix .out, $(basename $(SOURCE)))

.PHONY: CH02

CH02:$(OUTFILE)
	@echo compile $^ end

%.out:%.cpp
	@echo -n $(dir $<) > $@
	g++ $< -o $@


clean:
	rm -rf $(OUTFILE)




