resource "random_password" "bigip_password" {
  length = 21
  special = true
  override_special = "_%@"
}