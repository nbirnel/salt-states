ctr-alt-del:
  file.managed:
    - name: /etc/init/control-alt-delete.conf
    - user: root
    - group: root
    - mode: 644
    - source: salt://misc/ctrl-alt-del/control-alt-delete.conf

