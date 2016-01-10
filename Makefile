SALT = /srv/salt
FORMULAS = /srv/formulas
SALT_VERSION = v2015.5.3

install-minion: /etc/salt/minion
	
/etc/salt/minion: install_salt.sh
	./install_salt.sh git ${SALT_VERSION}
	@echo now either 'make local' or set the master in /etc/salt/master

install_salt.sh:
	curl -L https://bootstrap.saltstack.com -o $@
	chmod 755 $@

master: salt formulas fileroots get-formulas 

install-master: /etc/salt/master

/etc/salt/master: install_salt.sh
	./install_salt.sh -M git ${SALT_VERSION}

salt: ${SALT}

${SALT}: 
	ln -s "$$PWD/salt" $@

formulas: ${FORMULAS}

${FORMULAS}: 
	ln -s "$$PWD/formulas" $@

fileroots:
	mkdir -p /etc/salt/master.d
	cp files/master.d/fileroots.conf /etc/salt/master.d/

local:
	cp files/minion.d/localmaster.conf /etc/salt/minion.d/

get-formulas:
	cd formulas && ./get-formulas.sh

devel: 
	cp files/devel_grains.conf /etc/salt/minion.d/

kids:
	cp files/kids_grains.conf /etc/salt/minion.d

.phony: all salt formulas fileroots local pull-formulas devel kids master minion
