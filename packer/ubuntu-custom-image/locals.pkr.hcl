locals {
  time       = formatdate("DDMMYYYY-hhmm", timestamp())
  image_name = "${var.image_name}-${local.time}"
}