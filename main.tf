resource "vault_mount" "transit" {
  path        = "transit"
  type        = "transit"
}

resource "vault_generic_endpoint" "key_one" {
  depends_on = ["vault_mount.transit"]
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
