resource "aws_eip" "nat_gateway" {
  vpc = true
}

resource "aws_nat_gateway" "nat_gateway" {
    allocation_id = aws_eip.nat_gateway.id
    subnet_id = var.pub_subnet_id
    tags = {
       Name = var.nat-gw
  }
}


