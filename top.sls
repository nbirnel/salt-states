# Master file_roots configuration:

base:
  '*':
    - packages.ntp
    - packages.sshserver
    - packages.tmux
    - packages.vim
    - users.profile


  'role:Xserver':
    - packages.xclip
