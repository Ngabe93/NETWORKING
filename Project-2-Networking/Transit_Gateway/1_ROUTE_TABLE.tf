resource "aws_route_table" "ROUTE-TABLE-1" {
  vpc_id = aws_vpc.VPC_1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW_1.id
  }

  tags = {
    Name = "1_ROUTE_TABLE"
    
  }
}
resource"aws_route_table_association""ROUTR_1"{
    route_table_id=aws_route_table.ROUTE-TABLE-1.id
    subnet_id=aws_subnet.SUBNET_1.id
}
resource "aws_route" "route-1" {
  route_table_id         = aws_route_table.ROUTE-TABLE-1.id
  destination_cidr_block = "12.0.0.0/16"  # Replace with the CIDR block you're routing
  transit_gateway_id     = aws_ec2_transit_gateway.TRANSIT.id
  
}
resource "aws_route" "route-2" {
  route_table_id         = aws_route_table.ROUTE-TABLE-1.id
  destination_cidr_block = "13.0.0.0/16"  # Replace with the CIDR block you're routing
  transit_gateway_id     = aws_ec2_transit_gateway.TRANSIT.id
  
}
