output "natgw_id" {
  value =  aws_nat_gateway.nat_gateway.id  
}

output "eip_id" {
    value = aws_eip.nat_gateway.id
}