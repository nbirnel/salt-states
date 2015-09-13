SALT = /srv/salt
FORMULAS = /srv/formulas

all: salt formulas

salt: ${SALT}

${SALT}: 
	ln -s "$$PWD/salt" $@

formulas: ${FORMULAS}

${FORMULAS}: 
	ln -s "$$PWD/formulas" $@

local:
	cp files/minion.d/localmaster.conf /etc/salt/minion.d/

pull-formulas:
	cd formulas && for i in *; do (cd $i && git pull origin master); done

.phony: all salt formulas local
