#!/bin/bash

# Update package lists
apt-get update

# Install Apache web server
apt-get install -y apache2

# Create custom index.html file
echo "<html><body><h1>Welcome to My Custom VM Image</h1></body></html>" > /var/www/html/index.html

# Start Apache service
systemctl start apache2

# Enable Apache service to start on boot
systemctl enable apache2
