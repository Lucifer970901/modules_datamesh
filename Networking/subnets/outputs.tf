#output "subnet_id_output" {
#  value       = [for display_name in var.subnet_displayname: display_name]
#}

output "subnet_id" {
  value = { for v in oci_core_subnet.test_subnet : v.display_name => v.id }
}
