usb-mounts:
  file.append:
    - name: /etc/fstab
    - source: salt://etc/fstab/usb

usb-group:
  group.present:
    - name: usb

{% set alpha = [
  'b', 'c', 'd', 'e', 'f', 'g', 'h', 
  'i', 'j', 'k', 'l', 'm', 'n', 'o',
  'p', 'q', 'r', 's', 't', 'u', 'v',
  'w', 'x', 'y', 'z'
] %}

{% for letter in alpha -%}
/media/usb{{ letter }}:
  file.directory:
    - user: root
    - group: usb
    - dir_mode: 770
    - file_mode: 660
{% endfor %}

  
