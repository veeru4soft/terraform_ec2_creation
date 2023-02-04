resource "aws_route_table_association" "vproject_public_subnet_route_association" {
  subnet_id      = aws_subnet.vproject_public_subnet.id
  route_table_id = aws_route_table.vproject_public_route_table.id
}

resource "aws_route_table_association" "vproject_private_subnet_route_association" {
  subnet_id      = aws_subnet.vproject_private_subnet.id
  route_table_id = aws_route_table.vproject_private_route_table.id
}