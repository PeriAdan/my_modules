

resource "aws_vpc" "vpc" {
  cidr_block = var.custom_cidr

  tags = {
    Name = var.custom_tag
  }
}


resource "aws_internet_gateway" "igw" {
  count = var.create_attach_igw ? 1 : 0

  vpc_id = aws_vpc.vpc.vpc_module
  tags = {
    Name = "${var.vpc_tag}_igw"
  }
}
