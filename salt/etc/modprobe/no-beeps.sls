no-beeps:
  file.managed:
    - name: /etc/modprobe.d/50-nobeeps.conf
    - user: root
    - group: root
    - mode: 644
    - source: salt://etc/modprobe/files/no-beeps.conf
