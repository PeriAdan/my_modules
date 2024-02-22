

resource "aws_vpc" "vpc_module" {
  cidr_block = custom_cidr

  tags = {
    Name = custom_tag
  }
}
