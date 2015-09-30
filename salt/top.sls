# Master file_roots configuration:

base:
  '*':
    - packages.ntp
    - packages.sshserver
    - packages.tmux
    - packages.pwgen
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
