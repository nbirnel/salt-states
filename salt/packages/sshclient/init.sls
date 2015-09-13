{% set ssh = salt['grains.filter_by']({
  'RedHat': { 'client_package': 'openssh-clients' },
  'Debian': { 'client_package': 'openssh-client' },
}) %}

/etc/ssh/ssh_config:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source:
      - salt://packages/sshclient/ssh_config
    - require:
      - pkg: {{ ssh.client_package }}

sshclient-package:
  pkg:
    - installed
    - name: {{ ssh.client_package }}
