#!/bin/bash
echo "Downloading ChefDK..."
wget -nv -O /opt/chefdk_0.10.0-1_amd64.deb https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.10.0-1_amd64.deb
echo "Installing ChefDK..."
cd /opt; dpkg -i chefdk_0.10.0-1_amd64.deb
echo "Installation done..."