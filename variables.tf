variable "key_name" {
  default = "test_key"
}

variable "key_type" {
  default = "aes256-gcm96"
}

variable "convergent" {
  default = false
}

variable "derived" {
  default = false
}

variable "exportable" {
  default = false
}

variable "plaintext" {
  default = false
}
