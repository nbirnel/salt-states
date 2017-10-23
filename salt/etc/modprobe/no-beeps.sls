no-beeps:
  file.managed:
    - name: /etc/modprobe.d/50-nobeeps.conf
    - content: |
        blacklist pcspkr
    - user: root
    - group: root
    - mode: 644
