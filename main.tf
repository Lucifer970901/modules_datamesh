module "main_compartment" {
  source              = "./compartments/main_compartment"
  compartment_id      = var.parent_compartment_id
  compartment_name    = var.compartment_name
  
}
