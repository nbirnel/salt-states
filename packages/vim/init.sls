{% set vim = salt['grains.filter_by']({
  'RedHat': { 'package': 'vim-enhanced' },
  'Debian': { 'package': 'vim' },
}) %}

vim-package:
  pkg:
    - installed
    - name: {{ vim.package }}

# FIXME get username and add vimrc to that home directory
#/etc/.vimrc:
#  file.managed:
#    - user: root
#    - group: root
#    - mode: 600
#    - source:
#      - salt://packages/vim/vimrc

# FIXME add pathogen

# badwolf is managed elsewhere; makefile to fetch?
/usr/share/vim/vimfiles/colors/badwolf.vim:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - makedirs: True
    - source:
      - salt://packages/vim/badwolf.vim
