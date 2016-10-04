vault-installer:
  file.managed:
    - user: root
    - group: root
    - mode: 744
    - name: /root/install-vault
    - template: jinja
    - source:
      - salt://packages/vault/files/install-vault

vault-hashicorp-sig:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - name: /root/hashicorp.asc
    - source:
      - salt://packages/vault/files/hashicorp.asc

vault-installed:
  cmd.run:
    - name: /root/install-vault
    - stateful: True
    - watch: 
      - file: vault-installer
      - file: vault-hashicorp-sig
