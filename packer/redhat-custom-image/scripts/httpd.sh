#! /bin/bash
yum -y update
yum -y install httpd
systemctl enable httpd
systemctl start httpd
echo "Hello from us-central1" > /var/www/html/index.html