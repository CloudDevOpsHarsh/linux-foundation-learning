#!/bin/bash

# Kernel version
uname -a
uname -r

# Installed kernel packages
rpm -q kernel

# Default boot kernel
grubby --default-kernel
grubby --default-index

# Distribution details
cat /etc/os-release
