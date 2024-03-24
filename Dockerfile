# Use an Ubuntu base image
FROM ubuntu:latest

# Install QEMU and other necessary packages
RUN apt-get update && apt-get install -y \
    qemu \
    qemu-kvm \
    x11vnc \
    wget \
    unzip

# Create a directory for the Windows 98 image
WORKDIR /win98

# For example purposes, I'm using a placeholder URL
RUN wget -O win98.img "https://example.com/path/to/windows98.img"

# Copy a local startup script to the container
COPY start.sh /win98/start.sh

# Make the startup script executable
RUN chmod +x /win98/start.sh

# Expose the QEMU VNC port (change the port number if needed)
EXPOSE 5900

# Set the startup command to run QEMU with the Windows 98 image
CMD ["/win98/start.sh"]
