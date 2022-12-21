output "subcompartment_ids" {
  value = { for v in oci_identity_compartment.subcompartments : v.display_name => v.id }
}
