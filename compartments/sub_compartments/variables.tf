variable "subcompartments" {
   type        = any
   default     = {}
}

variable "compartment_name" {
  description = "user-friendly name of to use for the compartment"
  type        = string
}

variable "compartment_description" {
  type        = string
}

variable "compartment_id" {
  description = "retail compartment id"
  type        = string
}


