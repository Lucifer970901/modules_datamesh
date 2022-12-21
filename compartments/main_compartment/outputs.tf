output "compartments" {
  description = "The VCNs, indexed by display_name."
  value       = oci_identity_compartment.Retail_compartment.name
}

output "compartment_id_output" {
  description = "The main compartment id."
  value = oci_identity_compartment.Retail_compartment.id
}
