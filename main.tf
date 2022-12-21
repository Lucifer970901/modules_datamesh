module "main_compartment" {
  source              = "./compartments/main_compartment"
  parent_compartment  = var.parent_compartment
  compartment_name    = var.compartment_name
}
  
module "sub_compartments" {
  source              = "./compartments/sub_compartments"
  subcompartments    = var.subcompartments
  compartment_id      = module.main_compartment.compartment_id_output
  

  count = length(var.subcompartments) > 0 ? 1 : 0
}

  module "base_vcn" {
  source              = ".Networking/vcn"
  network_compartment = module.sub_compartments.compartment_id_output
  vcn_dns_label       = var.vcn_dns_label
}

module "base_subnet" {
  source              = ".Networking/subnets"
  subnets             = var.subnets
  vcn_id              = module.base_vcn.vcn_id_output
  network_compartment = var.network_compartment

  count = length(var.subnets) > 0 ? 1 : 0
}


