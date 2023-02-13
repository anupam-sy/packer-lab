# packer-lab
This repository contains packer related content like packer files and other documents to implement images as a code.

## Prerequisites
Below prerequisites must be fulfilled for successful execution of code.

### Software Requirement
Resources in this repository are meant for use with Packer (check the version using `packer version`). If you don't have the compatible version, install it from official packer documentation.

- [packer](https://releases.hashicorp.com/packer/) >= 1.8.5

**Reference:**
- https://releases.hashicorp.com/packer/
- https://developer.hashicorp.com/packer/downloads

### Packer Installation

1. Automatic Installation
To install the packer from package managers of your operating system, visit packer website and follow instructions.
    https://developer.hashicorp.com/packer/downloads

2. Manual Installation
To install packer manually, download the packer binary from "https://releases.hashicorp.com/packer/" and place it to your system's PATH.
```
    sudo wget https://releases.hashicorp.com/packer/1.8.5/packer_1.8.5_darwin_arm64.zip
    sudo unzip packer_1.8.5_darwin_arm64.zip
    sudo mv packer /usr/local/bin/
    packer version
```

## Execution:
To execute the packer commands for building the image, go to command prompt and switch to the directory conatinaing all the packer config files and run the following commands:

-   [Required] `packer init`
    -   The packer init command is used to download Packer plugin binaries. This is the first command that should be executed when working with a new or existing template.

-   [Optional] `packer fmt .`
    -   The packer fmt Packer command is used to format HCL2 configuration files to a canonical format and style.

-   [Required] `packer build .`
    -   The packer build command takes a template for a folder path conatining templates and runs all the builds within it. The various builds specified within a template are executed in parallel, unless otherwise specified. 