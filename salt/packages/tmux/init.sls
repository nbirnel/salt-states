tmux-package:
  pkg:
    - installed
    - name: tmux

/etc/tmux.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://packages/tmux/tmux.conf
