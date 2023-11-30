From ubuntu:22.04

# Source: https://medium.com/@roberto.fernandez.perez/create-docker-base-image-for-legacy-linux-system-3f5f77acd740

RUN touch /tmp/shim-20231127

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y bash \
  libguestfs-tools \
  qemu \
  vim \
  xz-utils
 
RUN mkdir /work

COPY exploit-exercises-nebula-5.iso /

COPY startup.sh /startup.sh
RUN chmod a+x /startup.sh
WORKDIR /

CMD ["/startup.sh"]
#CMD ["bash"]
