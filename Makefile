DEST = /srv/salt
FORMULAS = /srv/formulas

all: dest formulas

dest: ${DEST}

${DEST}: 
	ln -s "$$PWD" $@

formulas: ${FORMULAS}

${FORMULAS}:
	mkdir -p $@

.phony: all dest formulas
