#!/bin/bash
# By : Eng. Mohamed Kamal
# Email : Mr.peacock2@gmail.com

# Start QEMU Windows 98
qemu-system-x86_64 \
    -drive file=win98.img,format=raw \
    -m 128 \
    -device cirrus-vga \
    -net nic,model=rtl8139 \
    -net user \
    -vnc :0
