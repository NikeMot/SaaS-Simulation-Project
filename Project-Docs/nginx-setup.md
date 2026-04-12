#Overview
This document outlines the installation, configuration and basic troubleshooting steps for athe NGINX eb server on a Ubuntu VM hosted in Azure

#Prerequisites
Ubuntu VM in Azure
SSH access preconfigured (key-based authentication)
sudo privileges

#Initial installation
sudo apt update
sudo apt install nginx -y

#Verify installation
sudo systemctl status nginx

Expected - running 

#Enable NGINX on Boot
sudo systemctl enable nginx

#Network config on Azure
Port 22 - SSH
Port 80 - HTTP

#Testing Access
http: //VM Public IP

#Common Commands
sudo systemctl start nginx
sudo systmectl stop nginx
sudo systemctl restart nginx

