resource "aws_subnet" "my_private_subnet" {

  count  = length(var.pri_subnet_cidr)
  cidr_block = var.pri_subnet_cidr[count.index]
  vpc_id            = var.vpc_id
  #cidr_block        = var.pri_subnet_cidr
  availability_zone = var.pri_subnet_az

  tags = {
    Name = "My private Subnet"
  }
}
