DEST = /srv/salt

dest: ${DEST}

${DEST}: 
	ln -s "$$PWD" $@
