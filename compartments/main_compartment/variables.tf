variable "compartment_description" {
  default      = "This is the main compartment for all the retail resources"
  type        = string
}

variable "parent_compartment" {
  description = "parent compartment id under which this compartment is created"
  type        = string

}

variable "compartment_name" {
  description = "user-friendly name of to use for the compartment"
  type        = string
  default     = "Retail"
}
