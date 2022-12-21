module "main_compartment" {
  source              = "./compartments"
  compartment_id      = var.compartment_id
  compartment_name    = var.compartment_name
  
}
