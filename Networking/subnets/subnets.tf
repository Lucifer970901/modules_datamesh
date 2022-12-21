resource "oci_core_subnet" "test_subnet" {
    #Required
     vcn_id = "${var.vcn_id}"    
     compartment_id = "${var.network_compartment}"
    
    for_each       = var.subnets
  cidr_block     = each.value.cidr_block    
  display_name    = lookup(each.value, "name", each.key)
  prohibit_public_ip_on_vnic = lookup(each.value, "no_public_ip", each.key)
}
