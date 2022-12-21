module "main_compartment" {
  source              = "./compartments/main_compartment"
  parent_compartment  = var.parent_compartment
  compartment_name    = var.compartment_name
}
  
module "sub_compartments" {
  source              = "./compartments/sub_compartments"
  sub_compartments    = var.sub_compartments
  compartment_id      = module.main_compartment.compartment_id_output
  network_compartment = var.network_compartment

  count = length(var.sub_compartments) > 0 ? 1 : 0
}


