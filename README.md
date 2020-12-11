# myvagrantlibvirt
This is based on Ubuntu 18.04


# Podman:

To build this image you can use something like that:

podman build --format=docker -t vagrantlivirt:local .

This image works perfectly fine on centos8, I have not tested it on centos 7 or any other system, would be nice if somone can confirm that it works on other distros.

If you are using podman, here is an example of the command you should be running:

You can add sudo here if you want to run this command as root.

 docker run -it --rm --network host -v $(pwd):$(pwd) -v /var/run/libvirt/:/var/run/libvirt/ -v  ~/.vagrant.d/:/root/.vagrant.d localhost/myvagrant:latest vagrant status

You can also just run /bin/bash and do your thing, like SSH or anything else and once your done, the container will be removed.

When running the container like that it will run as a non-priviliged user if you are running it from your local user. (Provided that you are using Podman)
