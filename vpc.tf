resource "aws_vpc" "vproject_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "vproject_igw" {
  vpc_id = aws_vpc.vproject_vpc.id
  tags = {
    Name = "VProject IGW"
  }
}