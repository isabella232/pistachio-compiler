BIN=./node_modules/.bin
SRC=$(shell ls *.coffee)
TARGETS=$(patsubst %.coffee,%.js,$(SRC))

build: $(TARGETS)

%.js: %.coffee
	@$(BIN)/coffee -c -b $<

clean:
	@rm -f *.js

