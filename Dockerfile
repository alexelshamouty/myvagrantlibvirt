FROM ubuntu:18.04
COPY sources.list /etc/apt/sources.list
RUN apt update -y
RUN apt-get build-dep vagrant ruby-libvirt -y ; \
    apt-get install qemu libvirt-bin ebtables dnsmasq-base -y ; \
    apt-get install libxslt-dev libxml2-dev libvirt-dev zlib1g-dev ruby-dev -y ;
RUN apt-get install vagrant keyboard-configuration- -y
CMD ["/bin/bash"]

