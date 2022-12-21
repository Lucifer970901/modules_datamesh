variable "vcn_cidr_blocks" {
  description = "The list of IPv4 CIDR blocks the VCN will use."
  default     = ["10.0.0.0/16"]
  type        = list(string)
}

variable "vcn_dns_label" {
  description = "A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet"
  type        = string

}

variable "vcn_name" {
  description = "user-friendly name of to use for the vcn to be appended to the label_prefix"
  type        = string
  default     = "retail-vcn"
}


variable "network_compartment" {
  description = "network compartment"
  type        = string
}
