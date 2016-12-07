# Master file_roots configuration:

base:
  '*':
    - packages.ntp
    - packages.pwgen
    - packages.sshserver
    - packages.autossh
    - packages.tmux
    - packages.xkbset
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
    - packages.graphviz
    - packages.wireshark

  'roles:desktop':
    - match: grain
    - etc.fstab.desktop
    - misc.ctrl-alt-del
    - packages.hunspell
    - packages.hwinfo
    - packages.libav

  'roles:devel':
    - match: grain
    - packages.docutils
    - packages.git
    - packages.groff
    - packages.packer
    - packages.sloccount
    - packages.terraform
    - packages.vagrant
    - packages.vault
    - packages.virtualbox

  'roles:winenv':
    - match: grain
    - packages.rdesktop
    - packages.skype

  'roles:remote':
    - match: grain
    - packages.openvpn

  'roles:music':
    - match: grain
    - packages.csound
    - packages.sox
    - packages.supercollider

  'roles:forensic':
    - match: grain
    - packages.antiword
    - packages.catdoc

