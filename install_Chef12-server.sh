#!/bin/bash
echo "Install of Chef server started..."
echo "nameserver 8.8.8.8" >> /etc/resolv.conf
echo "172.16.1.5 chef-server" >> /etc/hosts
cd /opt/
wget -nv -O /opt/chef-server-core_12.3.0-1_amd64.deb https://web-dl.packagecloud.io/chef/stable/packages/ubuntu/trusty/chef-server-core_12.3.0-1_amd64.deb
dpkg -i chef-server*
chef-server-ctl reconfigure
mkdir -p /opt/chef-server
sudo chef-server-ctl user-create --filename /opt/chef-server/vagrant.pem vagrant Vlad ENDAVA vlad.turbuleasa@endava.com vagrant
sudo chef-server-ctl org-create ssh DevOps --association_user vagrant --filename /opt/chef-server/ssh.pem
chef-server-ctl status
chef-server-ctl test
echo "Install of Chef server Done..."