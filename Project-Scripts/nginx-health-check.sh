## Linux Scripts

**NGINX Script:**

if systemctl is-active -q nginx

then

	echo "NGINX is active"

else

	echo "NGINX is not active. Restarting..."

	sudo systemctl start nginx

fi