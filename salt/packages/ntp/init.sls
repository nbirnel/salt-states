{% set ntp = salt['grains.filter_by']({
  'RedHat': { 'service': 'ntpd' },
  'Debian': { 'service': 'ntp' },
}) %}

/etc/ntp.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source:
      - salt://packages/ntp/ntp.conf

ntp-package:
  pkg:
    - installed
    - name: ntp

ntpd-service:
  service:
    - name: {{ ntp.service }}
    - running 
    - enable: True
