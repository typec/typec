NODE_MODULES_BIN_DIR = ${CURDIR}/node_modules/.bin

MOCHA  = $(NODE_MODULES_BIN_DIR)/mocha
ESLINT = $(NODE_MODULES_BIN_DIR)/eslint

all: clean lint test

lint:
	$(ESLINT) --cache .

test:
	$(MOCHA)

clean:
	rm -f .eslintcache

.PHONY:  all build parser alt-parser lint test clean
.SILENT: all build parser alt-parser lint test clean
