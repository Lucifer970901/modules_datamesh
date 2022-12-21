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


