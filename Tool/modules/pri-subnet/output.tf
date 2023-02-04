output "pri_subnet_id" {
value = aws_subnet.my_private_subnet.*.id
}