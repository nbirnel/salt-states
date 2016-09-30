packer-installer:
  file.managed:
    - user: root
    - group: root
    - mode: 744
    - name: /root/install-packer
    - template: jinja
    - source:
      - salt://packages/packer/files/install-packer

packer-hashicorp-sig:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - name: /root/hashicorp.asc
    - source:
      - salt://packages/packer/files/hashicorp.asc

packer-installed:
  cmd.run:
    - name: /root/install-packer
    - stateful: True
    - watch: 
      - file: packer-installer
      - file: packer-hashicorp-sig
