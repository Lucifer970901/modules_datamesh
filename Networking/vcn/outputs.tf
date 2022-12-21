output "vcns" {
  description = "The VCNs, indexed by display_name."
  value       = oci_core_vcn.Retail_vcn.display_name
}

output "vcn_id_output" {
  description = "The VCNs id."
  value = oci_core_vcn.Retail_vcn.id
}
