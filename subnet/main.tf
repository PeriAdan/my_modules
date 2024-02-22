resource "aws_subnet" "subnet" {
  vpc_id                  = var.custom_vpc_id
  cidr_block              = var.custom_cidr
  availability_zone       = var.custom_az
  map_public_ip_on_launch = var.custom_map

  tags = {
    Name = var.custom_subnet_tag
  }
}