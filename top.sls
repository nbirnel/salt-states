# Master file_roots configuration:

base:
  '*':
    - packages.ntp
    - packages.sshserver
    - packages.tmux
    - packages.vim
    - users.profile

  'role:Xserver':
    - match: grain
    - packages.xclip

  'role:desktop':
    - match: grain
    - etc.fstab.desktop
