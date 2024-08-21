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
  destination_cidr_block = "17.0.0.0/16"  # Replace with the CIDR block you're routing
  transit_gateway_id     = aws_ec2_transit_gateway.TRANSIT.id
  
}
resource "aws_route" "route-4" {
  route_table_id         = aws_route_table.ROUTE-TABLE-2.id
  destination_cidr_block = "13.0.0.0/16"  # Replace with the CIDR block you're routing
  transit_gateway_id     = aws_ec2_transit_gateway.TRANSIT.id
  
}
