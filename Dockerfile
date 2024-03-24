# Use an Ubuntu base image
FROM ubuntu:latest

# Install QEMU and other necessary packages
RUN apt-get update && apt-get install -y \
    apt-utils \
    qemu \
    qemu-kvm \
    qemu-system-x86 \
    x11vnc \
    wget \
    unzip

# Create a directory for the Windows 98 image
WORKDIR /win98

# Download a Windows 98 disk image
RUN wget -O win98.img https://oxcesseg.com/win98.img

# Copy a local startup script to the container
COPY start.sh /win98/start.sh

# Make the startup script executable
RUN chmod +x /win98/start.sh

# Expose the QEMU VNC port
EXPOSE 0

# Set the startup command
CMD ["/win98/start.sh"]
