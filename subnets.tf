resource "aws_subnet" "vproject_public_subnet" {
  vpc_id            = aws_vpc.vproject_vpc.id
  cidr_block        = var.public_subnet_cidr_block
  availability_zone = var.azs
  tags = {
    Name = "${var.vpc_name}-Public_Subnet"
  }
}

resource "aws_subnet" "vproject_private_subnet" {
  vpc_id            = aws_vpc.vproject_vpc.id
  cidr_block        = var.private_subnet_cidr_block
  availability_zone = var.azs
  tags = {
    Name = "${var.vpc_name}-Private_Subnet"
  }
}