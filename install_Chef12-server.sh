#!/bin/bash
echo "Install of Chef server started..."
echo "Setting up hostname..."
echo "nameserver 8.8.8.8" >> /etc/resolv.conf
mv /etc/hosts /etc/hosts.old
touch /etc/hosts
echo "172.16.1.5 chefServer" >> /etc/hosts
echo "127.0.0.1 localhost" >> /etc/hosts
cd /opt/
echo "Downloading chef from repo..."
wget -nv -O /opt/chef-server-core_12.3.0-1_amd64.deb https://web-dl.packagecloud.io/chef/stable/packages/ubuntu/trusty/chef-server-core_12.3.0-1_amd64.deb
echo "Starting the installation onf chef-server-core..."
dpkg -i chef-server*
echo "Running the reconfigure command..."
chef-server-ctl reconfigure
echo "Checking Chef Server..."
chef-server-ctl status
echo "Install of Chef server Done..."