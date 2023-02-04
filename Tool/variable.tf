variable "aws_region" {}
variable "vpc_cidr" {}
variable "pub_subnet_cidr" {}
variable "subnet_az" {}
variable "vpc_name"{}
variable "pri_subnet_cidr" {}
variable "pri_subnet_az" {}
variable "nat-gw" {}
variable "private_routeTable_tags" {}
variable "pb_sg_tags" {
  default     = {}
  type        = map(string)
  description = "Public Security group tags"
}
# variable "sg_pb"  { }
variable "access_key" {
  default = ""
}
# variable "key_path" {
#   default = ""
# }
# variable "pvt_sg_tags"  {}
variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "instance_Name" {}
variable "sg_pb" {}

