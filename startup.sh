#!/bin/bash

# Depending on your host machine, following can take up to a couple minutes to boot

exec qemu-system-x86_64 \
  -nographic \
  -m 1024 \
  -enable-kvm \
  -boot d \
  -nic user,model=virtio-net-pci,hostfwd=tcp:0.0.0.0:2223-:22 \
  -cdrom ./exploit-exercises-nebula-5.iso
