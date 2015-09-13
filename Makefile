SALT = /srv/salt
FORMULAS = /srv/formulas

install: salt formulas fileroots
	@echo "Now you should 'make local', or set a master in /etc/salt/minion"

salt: ${SALT}

${SALT}: 
	ln -s "$$PWD/salt" $@

formulas: ${FORMULAS}

${FORMULAS}: 
	ln -s "$$PWD/formulas" $@

fileroots:
	cp files/master.d/fileroots.conf /etc/salt/master.d/

local:
	cp files/minion.d/localmaster.conf /etc/salt/minion.d/

pull-formulas:
	cd formulas && for i in *; do (cd $$i && git pull origin master); done

.phony: all salt formulas fileroots local pull-formulas
