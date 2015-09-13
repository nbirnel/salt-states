{% set zathura = salt['grains.filter_by']({
  'RedHat': {
    'package': 'zathura-plugins-all'
  },
  'Debian': {
    'package': 'zathura'
  },
}) %}

zathura-package:
  pkg:
    - installed
    - name: {{ zathura.package }}

# FIXME add zathura-plugins-all for cent
