webkit_package:
  pkg:
    - installed
    - name: libwebkit-dev

python-gtk2_package:
  pkg:
    - installed
    - name: python-gtk2-dev

python-gobject_package:
  pkg:
    - installed
    - name: python-gi-dev

python-setuptools_package:
  pkg:
    - installed
    - name: python3-setuptools

zenity_package:
  pkg:
    - installed
    - name: zenity

pkg-config_package:
  pkg:
    - installed
    - name: pkg-config

socat_package:
  pkg:
    - installed
    - name: socat

# Not true dep, but gives us caching
# FIXME needs some configuration to do any good
polipo_package:
  pkg:
    - installed
    - name: polipo
