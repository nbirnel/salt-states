/etc/profile:
  file.managed:
    - user: root
    - group: root
    - mode: 666
    - source:
      - salt://users/profile

/etc/bash.bashrc:
  file.managed:
    - user: root
    - group: root
    - mode: 666
    - source:
      - salt://users/bashrc

/etc/bash.bash.logout:
  file.managed:
    - user: root
    - group: root
    - mode: 666
    - source:
      - salt://users/bash_logout

