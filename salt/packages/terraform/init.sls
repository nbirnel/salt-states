terraform-installer:
  file.managed:
    - user: root
    - group: root
    - mode: 744
    - name: /root/install-terraform
    - template: jinja
    - source:
      - salt://packages/terraform/files/install-terraform

terraform-hashicorp-sig:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - name: /root/hashicorp.asc
    - source:
      - salt://packages/terraform/files/hashicorp.asc

terraform-installed:
  cmd.run:
    - name: /root/install-terraform
    - stateful: True
    - watch: 
      - file: terraform-installer
      - file: terraform-hashicorp-sig
