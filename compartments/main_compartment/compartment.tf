resource "oci_identity_compartment" "Retail_compartment" {
    compartment_id = "${var.compartment_id}"
    name = var.compartment_name
    description = var.compartment_description
    enable_delete = "true"
    
}
