{% set zathura = salt['grains.filter_by']({
  'RedHat': {
    'package': 'zathura-plugins-all'
  },
  'Suse': {
    'package': 'zathura-plugin-pdf-poppler'
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
