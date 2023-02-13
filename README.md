# Packer Lab
This repository contains packer related content like packer files and other documents to implement images as a code.

## Prerequisites
Below prerequisites must be fulfilled for successful execution of code.

### Software Requirement
Resources in this repository are meant for use with Packer (check the version using `packer version`). If you don't have the compatible version, install it from official packer documentation. See [Installation-Guide](./docs/install.md) on how to install Packer.

- [packer](https://developer.hashicorp.com/packer/downloads) >= 1.8.5

### Permissions
Authenticating with Google Cloud services requires either a User Application Default Credentials, a JSON Service Account Key or an Access Token. These are not required if you are running the googlecompute Packer builder on Google Cloud with a properly-configured Google Service Account.

1. If you run the googlecompute Packer builder locally on your workstation, you will need to install the Google Cloud SDK and authenticate using User Application Default Credentials. You don't need to specify an account file if you are using this method. Your user must have at least below roles to use Packer succesfully.

- Compute Instance Admin (v1)
- Service Account User roles

2. Make sure to open your firewall to allow ssh connection to virtual machine launched by packer for building image.

## Execution
To execute the packer commands for building the image, go to command prompt and switch to the directory conatinaing all the packer config files and run the following commands:

-   [Required] `packer init`
-   [Optional] `packer fmt .`
-   [Optional] `packer validate .`
-   [Required] `packer build .`

**Note:** See [Packer-Guide](./docs/info.md) to get real-quick overview of Packer.

## References
- https://developer.hashicorp.com/packer/docs
- https://developer.hashicorp.com/packer/plugins/builders/googlecompute