resource "aws_route_table" "vproject_public_route_table" {
  vpc_id = aws_vpc.vproject_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vproject_igw.id
  }
  tags = {
    Name = "${var.vpc_name}-Public-Table"
  }
}

resource "aws_route_table" "vproject_private_route_table" {
  vpc_id = aws_vpc.vproject_vpc.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.vproject_nat_gateway.id
  }
  tags = {
    Name = "${var.vpc_name}-Private-Table"
  }
}