module "main_compartment" {
  source              = "./compartments/main_compartment"
  parent_compartment  = var.parent_compartment
  compartment_name    = var.compartment_name
  
}
