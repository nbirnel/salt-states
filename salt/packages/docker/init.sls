ca-certificates-package:
  pkg:
    - installed
    - name: ca-certificates

apt-https-package:
  pkg:
    - installed
    - name: apt-transport-https

linux-image-extra-virtual-packages:
  pkg:
    - installed
    - name: linux-image-extra-virtual

linux-image-extra-kernel-packages:
  pkg: 
    - installed
    - name: linux-image-extra-{{ salt['grains.get']('kernelrelease') }}

docker-repo:
  pkgrepo.managed:
    - humanname: Docker 
    - name: deb https://apt.dockerproject.org/repo {{ grains["os"]|lower }}-{{ grains["oscodename"] }} main
    - file: /etc/apt/sources.list.d/docker.list
    - keyid: 58118E89F3A912897C070ADBF76221572C52609D
    - keyserver: hkp://p80.pool.sks-keyservers.net:80
    - require_in:
    - pkg: docker-package

docker-package:
  pkg.latest:
    - name: docker-engine
