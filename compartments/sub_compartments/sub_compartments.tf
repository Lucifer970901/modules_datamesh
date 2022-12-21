resource "oci_identity_compartment" "sub_compartments" {
    #Required   
     compartment_id = "${var.compartment_id}"
    
    for_each       = var.subcompartments    
  name    = lookup(each.value, "name", each.key)
  description     = each.value.description
  enable_delete= "true"
}

