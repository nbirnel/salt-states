{% set whois = salt['grains.filter_by']({
  'RedHat': { 'package': 'jwhois' },
  'Debian': { 'package': 'whois' },
}) %}

whois-package:
  pkg:
    - installed
    - name: {{ whois.package }}

