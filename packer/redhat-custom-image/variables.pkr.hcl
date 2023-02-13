variable "project_id" {
  type        = string
  description = "The project ID that will be used to launch instances and store images."
}

// If both source_image and source_image_family are specified, source_image takes precedence.
variable "source_image" {
  type        = string
  description = "The id of the source image to use to create the new image from."
  default     = "ubuntu-2204-jammy-v20230114"
}

variable "source_image_family" {
  type        = string
  description = "The source image family to use to create the new image from."
  default     = "ubuntu-2204-lts"
}

variable "instance_name" {
  type        = string
  description = "A name to give the launched instance. Beware that this must be unique. Defaults to packer-{{uuid}}."
}

variable "machine_type" {
  type        = string
  description = "The machine type of the launched instance. Defaults to 'n1-standard-1'"
}

variable "disk_size" {
  type        = number
  description = "The size of the disk in GB of the launched instance. This defaults to 20, which is 20GB."
}

variable "disk_type" {
  type        = string
  description = "Type of disk used to back your launched instance, like pd-ssd or pd-standard. Defaults to pd-standard."
}

variable "region" {
  type        = string
  description = "The region in which to launch the instance."
}

variable "zone" {
  type        = string
  description = "The zone in which to launch the instance used to create the image."
}

variable "network" {
  type        = string
  description = "The Google Compute network id or URL to use for the launched instance."
}

variable "network_project_id" {
  type        = string
  description = "The project ID for the network and subnetwork to use for launched instance. Defaults to project_id."
}

variable "subnetwork" {
  type        = string
  description = "The Google Compute subnetwork id or URL to use for the launched instance."
}

variable "communicator" {
  type        = string
  description = "Communicator to connect to launched instance. Use: 'none, ssh, winrm', if required."
}

// When set, the contents of the startup script file will be added to the instance metadata under the "startup_script" metadata property.
variable "startup_script_file" {
  type        = string
  description = "The path to a startup script to run on the launched instance from which the image will be made."
}

variable "image_name" {
  type        = string
  description = "The unique name of the resulting image. Defaults to packer-{{timestamp}}."
}

variable "image_description" {
  type        = string
  description = "The description of the resulting image."
}

variable "image_family" {
  type        = string
  description = "The name of the image family to which the resulting image belongs."
}

variable "image_storage_locations" {
  type        = list(string)
  description = "Storage location, either regional or multi-regional, where snapshot content is to be stored and only accepts 1 value. Always defaults to a nearby regional or multi-regional location."
}

variable "image_labels" {
  type        = map(string)
  description = "Key/value pair labels to apply to the created image."
  default     = {}
}