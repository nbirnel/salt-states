SALT = /srv/salt
FORMULAS = /srv/formulas
SALT_VERSION = v2015.5.3

minion: install_salt.sh
	./install_salt.sh git ${SALT_VERSION}

install-salt.sh :
	curl -L curl -L https://bootstrap.saltstack.com -o install_salt.sh

master: salt formulas fileroots local install_salt.sh
	./install_salt.sh -M git ${SALT_VERSION}

salt: ${SALT}

${SALT}: 
	ln -s "$$PWD/salt" $@

formulas: ${FORMULAS}

${FORMULAS}: 
	ln -s "$$PWD/formulas" $@

fileroots:
	mkdir /etc/salt/master.d
	cp files/master.d/fileroots.conf /etc/salt/master.d/

local: minion
	cp files/minion.d/localmaster.conf /etc/salt/minion.d/

pull-formulas:
	cd formulas && for i in *; do (cd $$i && git pull origin master); done

.phony: all salt formulas fileroots local pull-formulas
