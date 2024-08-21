resource "aws_route_table" "ROUTE-TABLE-3" {
  vpc_id = aws_vpc.VPC_3.id

  tags = {
    Name = "3_ROUTE_TABLE"
    
  }
}
resource"aws_route_table_association""ROUTR_3"{
    route_table_id=aws_route_table.ROUTE-TABLE-3.id
    subnet_id=aws_subnet.SUBNET_3.id
}
resource "aws_route" "route-5" {
  route_table_id         = aws_route_table.ROUTE-TABLE-3.id
  destination_cidr_block = "17.0.0.0/16"  # Replace with the CIDR block you're routing
  transit_gateway_id     = aws_ec2_transit_gateway.TRANSIT.id
  
}
resource "aws_route" "route-6" {
  route_table_id         = aws_route_table.ROUTE-TABLE-3.id
  destination_cidr_block = "12.0.0.0/16"  # Replace with the CIDR block you're routing
  transit_gateway_id     = aws_ec2_transit_gateway.TRANSIT.id
  
}
