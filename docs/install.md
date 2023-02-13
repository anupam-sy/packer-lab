# Packer Installation
Packer is a free and open source tool for creating golden images for multiple platforms from a single source configuration. This document will guide you to install Packer to build images from code.

## Packer Installation

### Automatic Installation
To install the packer from package managers of your operating system, visit packer website and follow instructions.
> https://developer.hashicorp.com/packer/downloads

### Manual Installation
To install packer manually, download the packer binary from `https://releases.hashicorp.com/packer/` and place it to your system's PATH.
```
    sudo wget https://releases.hashicorp.com/packer/1.8.5/packer_1.8.5_darwin_arm64.zip
    sudo unzip packer_1.8.5_darwin_arm64.zip
    sudo mv packer /usr/local/bin/
    packer version
```

**Download Sources:**
- https://releases.hashicorp.com/packer/
- https://developer.hashicorp.com/packer/downloads