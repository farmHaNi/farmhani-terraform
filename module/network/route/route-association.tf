resource "aws_route_table_association" "private_a_association" {
  subnet_id      = aws_subnet.private_a.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_c_association" {
  subnet_id      = aws_subnet.private_c.id
  route_table_id = aws_route_table.private_route_table.id
}
