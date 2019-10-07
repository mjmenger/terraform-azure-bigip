resource "random_password" "bigippassword" {
  length = 21
  special = true
  override_special = "_%@"
}