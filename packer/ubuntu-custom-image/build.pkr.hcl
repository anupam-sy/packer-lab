build {
  name    = "ubuntu-custom-build"
  sources = ["sources.googlecompute.ubuntu_2204_lts_image"]

  provisioner "shell" {
    inline = [
      "sudo apt-get clean",
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
    ]
  }

  provisioner "file" {
    source      = "./templates/index.html"
    destination = "/tmp/index.html"
  }

  provisioner "shell" {
    inline = [
      "sudo mv /tmp/index.html /var/www/html/",
      "sudo systemctl start nginx",
    ]
  }
}