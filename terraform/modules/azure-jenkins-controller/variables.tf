# Required variables
variable "service_fqdn" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_ssh_publickey" {
  type = string
}

variable "location" {
  type = string
}

variable "controller_network_name" {
  type = string
}

variable "controller_network_rg_name" {
  type = string
}

variable "controller_subnet_name" {
  type = string
}

variable "ephemeral_agents_subnet_name" {
  type = string
}

variable "controller_data_disk_size_gb" {
  type = string
}

variable "controller_vm_size" {
  type = string
}

variable "controller_service_principal_ids" {
  type = list(string)
}

variable "controller_service_principal_end_date" {
  type = string
}

### Optionals variables
variable "is_public" {
  type    = bool
  default = false
}

variable "dns_zone_name" {
  type    = string
  default = ""
}

variable "dns_zone" {
  type    = string
  default = "jenkins.io"
}

variable "dns_resourcegroup_name" {
  type    = string
  default = ""
}

variable "default_tags" {
  type    = map(string)
  default = {}
}

variable "controller_data_disk_type" {
  type    = string
  default = "StandardSSD_LRS"
}

variable "controller_os_disk_size_gb" {
  type    = number
  default = 32 # Minimal size for Ubuntu 22.04 official image
}

variable "controller_os_disk_type" {
  type    = string
  default = "StandardSSD_LRS"
}

variable "jenkins_infra_ips" {
  type = object({
    ldap_ipv4         = string
    puppet_ipv4       = string
    privatevpn_subnet = list(string)
  })
}

variable "controller_active_directory_url" {
  type    = string
  default = "https://github.com/jenkins-infra/azure"
}

variable "controller_packer_rg_ids" {
  type    = list(string)
  default = []
}

## TODO: backward compatibility variables to be removed (implies renaming resources)
variable "controller_resourcegroup_name" {
  type    = string
  default = ""
}

variable "ephemeral_agents_resourcegroup_name" {
  type    = string
  default = ""
}

variable "controller_datadisk_name" {
  type    = string
  default = ""
}
