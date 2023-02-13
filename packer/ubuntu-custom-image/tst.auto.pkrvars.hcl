project_id = "clear-tape-374909"

source_image        = "ubuntu-2204-jammy-v20230114"
source_image_family = "ubuntu-2204-lts"
instance_name       = "packer-temp-instance"
machine_type        = "n1-standard-1"
disk_size           = 100
disk_type           = "pd-standard"
region              = "us-central1"
zone                = "us-central1-a"
network             = "fc-tst-packer-vpc"
network_project_id  = "clear-tape-374909"
subnetwork          = "fc-tst-packer-vpc-subnet"
ssh_username        = "packer"
communicator        = "ssh"

image_name              = "ubuntu-custom-img"
image_description       = "Image created by packer"
image_family            = "ubuntu-custom-family"
image_storage_locations = ["us-central1"]
image_labels = {
  env        = "tst"
  build_from = "packer"
}