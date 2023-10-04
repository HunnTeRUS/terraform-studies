variable "first_name" {
  type      = string
  sensitive = true
  default   = "Terraform"
}

variable "last_name" {
  type      = string
  sensitive = true
  default   = "Otavio"
}


variable "phone_number_contact" {
  type      = string
  sensitive = true
  default   = "000-0900"
}

locals {
  contact_info = {
    first_name   = var.first_name
    last_name    = var.last_name
    phone_number_contact = var.phone_number_contact
  }

  my_number = nonsensitive(var.phone_number_contact)
}

output "first_name" {
  sensitive = true
  value     = local.contact_info.first_name
}

output "last_name" {
  value     = local.contact_info.last_name
  sensitive = true
}

output "phone_number_contact" {
  value     = local.contact_info.phone_number_contact
  sensitive = true
}

output "my_number" {
  value = local.my_number
}

