#! /bin/bash

# Update yum repos and install apache web server
yum -y update
yum -y install httpd
systemctl enable httpd
systemctl start httpd

# Query google's metadata server to get the VM details
NAME=$(curl -H "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/instance/hostname")
IP=$(curl -H "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/ip")
# METADATA=$(curl -f -H "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/instance/attributes/?recursive=True" | jq 'del(.["startup-script"])')
cat <<EOF > /var/www/html/index.html
<h1>Compute Engine</h1>
<pre>
Name: $NAME
IP ADDRESS: $IP
</pre>
EOF