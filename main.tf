resource "vault_generic_endpoint" "key_one" {
  path = "/transit/keys/${var.key_name}"

  data_json = <<EOT
{
  "type": "${var.key_type}",
  "convergent_encryption": ${var.convergent},
  "derived": "${var.derived}",
  "exportable": "${var.exportable}",
  "allow_plaintext_backup": "${var.plaintext}"
}
EOT
}
