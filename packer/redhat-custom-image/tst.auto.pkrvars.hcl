project_id = "clear-tape-374909"

source_image        = "rhel-9-v20230203"
source_image_family = "rhel-9"
instance_name       = "packer-temp-instance"
machine_type        = "n1-standard-1"
disk_size           = 100
disk_type           = "pd-standard"
region              = "us-central1"
zone                = "us-central1-a"
network             = "fc-tst-packer-vpc"
network_project_id  = "clear-tape-374909"
subnetwork          = "fc-tst-packer-vpc-subnet"
communicator        = "none"
startup_script_file = "./scripts/httpd.sh"

image_name              = "rhel-custom-img"
image_description       = "Image created by packer"
image_family            = "rhel-custom-family"
image_storage_locations = ["us-central1"]
image_labels = {
  env        = "tst"
  build_from = "packer"
}