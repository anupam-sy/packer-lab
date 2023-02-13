# Packer Lab
This repository contains packer related content like packer files and other documents to implement images as a code.

## Prerequisites
Below prerequisites must be fulfilled for successful execution of code.

### Software Requirement
Resources in this repository are meant for use with Packer (check the version using `packer version`). If you don't have the compatible version, install it from official packer documentation.

- [packer](https://releases.hashicorp.com/packer/) >= 1.8.5

**Download Source:**
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

### Permissions
Authenticating with Google Cloud services requires either a User Application Default Credentials, a JSON Service Account Key or an Access Token. These are not required if you are running the googlecompute Packer builder on Google Cloud with a properly-configured Google Service Account.

- If you run the googlecompute Packer builder locally on your workstation, you will need to install the Google Cloud SDK and authenticate using User Application Default Credentials. You don't need to specify an account file if you are using this method. Your user must have at least below roles to use Packer succesfully.

1. Compute Instance Admin (v1)
2. Service Account User roles

- Make sure to open your firewall to allow ssh connection.

## Execution
To execute the packer commands for building the image, go to command prompt and switch to the directory conatinaing all the packer config files and run the following commands:

-   [Required] `packer init`
    -   The packer init command is used to download Packer plugin binaries. This is the first command that should be executed when working with a new or existing template.

-   [Optional] `packer fmt .`
    -   The packer fmt Packer command is used to format HCL2 configuration files to a canonical format and style.

-   [Optional] `packer validate .`
    -   The packer validate Packer command is used to validate the syntax and configuration of a template. The command will return a zero exit status on success, and a non-zero exit status on failure.

-   [Required] `packer build .`
    -   The packer build command takes a template (or) a folder path containing templates and runs all the builds within it. The various builds specified within a template are executed in parallel, unless otherwise specified.

**Note:** 
1. To pass the variables values, it is conveninet as well as recommend to use standard variable definition files. Variable definition filenames ends with either .pkrvars.hcl or .pkrvars.json. You can then specify that file on the command line with -var-file flag.

2. Any variable definition file name(s) ending in .auto.pkrvars.hcl will be loaded automatically without the need to pass them explicitly.

## References
- https://developer.hashicorp.com/packer/docs
- https://developer.hashicorp.com/packer/plugins/builders/googlecompute