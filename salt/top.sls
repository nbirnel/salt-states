# Master file_roots configuration:

base:
  '*':
    - packages.vim
    - packages.tmux
    - packages.ntp
    - packages.sshserver
    - users.profile

  'role:Xserver':
    - packages.xclip
