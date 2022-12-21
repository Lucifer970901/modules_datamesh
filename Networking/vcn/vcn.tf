#Virtual cloud network for Datamesh Retail demo

#VCN resource block
resource "oci_core_vcn" "Retail_vcn" {
    compartment_id = "${var.network_compartment}"

    cidr_blocks = var.vcn_cidr_blocks
    display_name = var.vcn_name
    dns_label = var.vcn_dns_label
}
