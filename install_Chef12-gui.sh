#!/bin/bash
echo "Installing the Chef 12 GUI..."
chef-server-ctl install opscode-manage
opscode-manage-ctl reconfigure
chef-server-ctl reconfigure
echo "Installationg of GUI done..."