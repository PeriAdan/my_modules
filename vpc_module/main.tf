

resource "aws_vpc" "vpc_module" {
  cidr_block = var.custom_cidr

  tags = {
    Name = var.custom_tag
  }
}
