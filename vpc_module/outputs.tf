output "id" {
  value = aws_vpc.vpc_module.id
}

output "igw_id" {
  value = var.create_attach_igw ? aws_internet_gateway.igw[0].id : null
}
