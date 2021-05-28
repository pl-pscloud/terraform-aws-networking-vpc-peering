variable "pscloud_env" {}
variable "pscloud_company" {}

//if custom
variable "pscloud_peer_vpcs" {
  type = map(object({
    vpc1  = string
    vpc2  = string
  }))
  default = {}
}

variable "pscloud_auto_accept" { default = true }