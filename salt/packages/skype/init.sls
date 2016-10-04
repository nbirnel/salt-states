skype-installer:
  file.managed:
    - user: root
    - group: root
    - mode: 744
    - name: /root/install-skype
    - template: jinja
    - source:
      - salt://packages/skype/files/install-skype

skype-installed:
  cmd.run:
    - name: /root/install-skype
    - stateful: True
    - watch: 
      - file: skype-installer
