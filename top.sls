# Master file_roots configuration:

base:
  '*':
    - packages.ntp
    - packages.sshserver
    - packages.tmux
    - packages.vim
    - users.profile

  'roles:Xserver':
    - match: grain
    - packages.xclip

  'roles:desktop':
    - match: grain
    - etc.fstab.desktop

  'roles:devel':
    - match: grain
    - packages.git
