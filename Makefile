SALT = /srv/salt
FORMULAS = /srv/formulas
SALT_VERSION = v2015.5.3

minion: install_salt.sh
	./install_salt.sh git ${SALT_VERSION}
	@now either 'make local' or set the master in /etc/salt/master

install-salt.sh :
	curl -L https://bootstrap.saltstack.com -o install_salt.sh

master: salt formulas fileroots get-formulas install_salt.sh
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

local: minion master
	cp files/minion.d/localmaster.conf /etc/salt/minion.d/

get-formulas:
	cd formulas && ./get-formulas.sh

devel: minion
	cp files/devel.grains /etc/salt/minion.d

kids: minion
	cp files/kids.grains /etc/salt/minion.d

.phony: all salt formulas fileroots local pull-formulas devel kids
