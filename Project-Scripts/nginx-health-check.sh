#!/bin/bash

if systemctl is-active --quiet nginx
then
    echo "NGINX is active"
else
    echo "NGINX is not active. Restarting..."
    sudo systemctl start nginx

    if systemctl is-active --quiet nginx
    then
        echo "NGINX successfully restarted"
    else
        echo "Failed to restart NGINX"
    fi
fi