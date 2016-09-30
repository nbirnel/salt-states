{% from "packages/virtualbox/map.jinja" import oscodename with context %}

virtualbox_repo:
  pkgrepo.managed:
    - name: deb http://download.virtualbox.org/virtualbox/debian {{ oscodename }} contrib
    - file: /etc/apt/sources.list.d/virtualbox.list
    - key_url: https://www.virtualbox.org/download/oracle_vbox_2016.asc
    - require_in:
      - pkg: virtualbox_package

virtualbox_package:
  pkg.installed:
    - name: virtualbox-5.1

dkms_package:
  pkg.installed:
    - name: dkms
    - require_in:
      - pkg: virtualbox_package
