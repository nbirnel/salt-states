# Master file_roots configuration:

base:
  '*':
    - packages.ntp
    - packages.pwgen
    - packages.sshserver
    - packages.tmux
    - packages.whois
    - vim
    - users.profile

  'roles:Xserver':
    - match: grain
    - packages.xclip
    - packages.zathura

  'roles:networker':
    - match: grain
    - packages.nmap

  'roles:desktop':
    - match: grain
    - etc.fstab.desktop
    - misc.ctrl-alt-del
    - packages.hunspell

  'roles:devel':
    - match: grain
    - packages.git
    - packages.sloccount

  'roles:winenv':
    - match: grain
    - packages.rdesktop

  'roles:remote':
    - match: grain
    - packages.openvpn

