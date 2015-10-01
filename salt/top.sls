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

  'roles:desktop':
    - match: grain
    - etc.fstab.desktop

  'roles:devel':
    - match: grain
    - packages.git

  'roles:winenv':
    - match: grain
    - packages.rdesktop
