{% set ssh = salt['grains.filter_by']({
  'RedHat': {
    'service': 'sshd',
    'client_package': 'openssh-clients'
  },
  'Debian': {
    'service': 'ssh',
    'client_package': 'openssh-client'
  },
}) %}

include:
    - packages.sshclient

sshserver-package:
  pkg:
    - installed
    - name: openssh-server

ssh-service:
  service.running:
    - name: {{ ssh.service }}
    - require:
      - pkg: {{ ssh.client_package }}
      - pkg: openssh-server
      - file: /etc/ssh/sshd_config


/etc/ssh/sshd_config:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source:
      - salt://packages/sshserver/sshd_config
    - require:
      - pkg: openssh-server
