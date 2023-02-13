build {
  name    = "ubuntu-custom-build"
  sources = ["sources.googlecompute.ubuntu_2204_lts_image"]

  provisioner "shell" {
    inline = [
      "sudo apt-get clean",
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
      "sudo systemctl start nginx",
    ]
  }
}