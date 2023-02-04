resource "aws_nat_gateway" "vproject_nat_gateway" {
  allocation_id = aws_eip.vproject_eip_nat.id
  subnet_id     = aws_subnet.vproject_public_subnet.id

  tags = {
    Name = "VProject-NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.vproject_igw]
}