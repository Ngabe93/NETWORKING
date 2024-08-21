resource "aws_route_table" "ROUTE-TABLE-2" {
  vpc_id = aws_vpc.VPC_2.id

  tags = {
    Name = "2_ROUTE_TABLE"
    
  }
}
resource"aws_route_table_association""ROUTR_2"{
    route_table_id=aws_route_table.ROUTE-TABLE-2.id
    subnet_id=aws_subnet.SUBNET_2.id
}
resource "aws_route" "route-3" {
  route_table_id         = aws_route_table.ROUTE-TABLE-2.id
  destination_cidr_block = "10.0.0.0/16"  # Replace with the CIDR block you're routing
  vpc_peering_connection_id = aws_vpc_peering_connection.PEERING.id
  
}
