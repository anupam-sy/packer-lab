source "googlecompute" "ubuntu_2204_lts_image" {
  project_id = var.project_id

  source_image        = var.source_image
  source_image_family = var.source_image_family
  instance_name       = var.instance_name
  machine_type        = var.machine_type
  disk_size           = var.disk_size
  disk_type           = var.disk_type
  region              = var.region
  zone                = var.zone
  network             = var.network
  network_project_id  = var.network_project_id
  subnetwork          = var.subnetwork
  communicator        = var.communicator
  ssh_username        = var.ssh_username

  image_name              = local.image_name
  image_description       = var.image_description
  image_family            = var.image_family
  image_storage_locations = var.image_storage_locations
  image_labels            = var.image_labels
}