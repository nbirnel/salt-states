DEST = /srv/salt

all: dest

dest: ${DEST}

${DEST}: 
	ln -s "$$PWD/salt" $@

.phony: all dest
