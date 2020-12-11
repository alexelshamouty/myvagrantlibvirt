FROM ubuntu:18.04
COPY sources.list /etc/apt/sources.list
RUN apt update -y
RUN apt-get build-dep vagrant ruby-libvirt -y ;\
    apt-get install rsync -y ; \
    apt-get install sudo -y ; \
    apt-get install vim -y
ADD https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb /tmp
RUN apt install /tmp/vagrant_2.2.6_x86_64.deb -y
RUN apt install openssh-client -y
RUN rm -rf /tmp/vagrant_2.2.6_x86_64.deb
RUN vagrant plugin install vagrant-libvirt
CMD ["/bin/bash"]
