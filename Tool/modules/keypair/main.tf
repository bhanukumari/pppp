# resource "tls_private_key" "rsa" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }
# resource "aws_key_pair" "key_pair" {
#   key_name   = var.key_name
#   public_key = 
# }
# resource "local_file" "key_pair" {
#   content  = tls_private_key.rsa.private_key_pem
#   filename = var.key_path
#   file_permission = "0400"
# }