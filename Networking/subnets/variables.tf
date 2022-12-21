variable "subnets" {
   type        = any
   default     = {}
}

#variable "subnet_cidr_block" {}

variable "vcn_id" {
}

#variable "subnet_displayname" {}

variable "network_compartment" {
  description = "network compartment"
  type        = string
}
