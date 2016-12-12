{% set libav = salt['grains.filter_by']({
  'Debian': { 'package': 'libav-tools' },
  'Suse': { 'package': 'libavutil55' },
}) %}

libav-tools-package:
  pkg:
    - installed
    - name: {{ libav.package }}

