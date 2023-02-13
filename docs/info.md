# Packer
Packer is a free and open source tool for creating golden images for multiple platforms from a single source configuration. Packer helps you to implement `Images as Code`.

## Packer Commands (CLI)
We typically use below mentioned commands to execute and build images from packer.

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