#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root (use sudo)"
  exit 1
fi

mkdir -p /opt/fingerpp/bin

cp ./fingerpp.service /etc/systemd/system/ || { echo "Failed to copy fingerpp.service"; exit 1; }
cp fingerpp /opt/fingerpp/bin/ || { echo "Failed to copy fingerpp binary"; exit 1; }

apt update && apt-get install -y libssl3 \
  libusb-1.0-0 \
  fprintd \
  libevent-core-2.1-7 \
  libdbus-1-3 || { echo "Failed to install required packages"; exit 1; }

systemctl daemon-reload || { echo "Failed to reload systemd"; exit 1; }
systemctl enable fingerpp.service || { echo "Failed to enable fingerpp.service"; exit 1; }
systemctl restart fingerpp.service || { echo "Failed to start fingerpp.service"; exit 1; }

echo "Fingerprint driver installation completed successfully."
