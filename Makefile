DEST = /srv/salt

all: dest

dest: ${DEST}

${DEST}: 
	ln -s "$$PWD" $@

.phony: all dest
