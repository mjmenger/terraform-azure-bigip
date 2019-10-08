# BIG-IP Management Public IP Addresses
output "mgmt_public_ips" {
  value = ""
}

# BIG-IP Management Public DNS
output "mgmt_public_dns" {
  value = ""
}

# BIG-IP Management Port
output "mgmt_port" {
  value = ""
}

# BIG-IP Password
output "password" {
  value = "${random_password.bigip_password.result}"
}
# Public Network Interface
output "public_nic_ids" {
  value = ""
}