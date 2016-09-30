vagrant-installer:
  file.managed:
    - user: root
    - group: root
    - mode: 744
    - name: /root/install-vagrant
    - template: jinja
    - source:
      - salt://packages/vagrant/files/install-vagrant

vagrant-hashicorp-sig:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - name: /root/hashicorp.asc
    - template: jinja
    - source:
      - salt://packages/vagrant/files/hashicorp.asc

vagrant-installed:
  cmd.run:
    - name: /root/install-vagrant
    - stateful: True
    - watch: 
      - file: vagrant-installer
      - file: vagrant-hashicorp-sig
