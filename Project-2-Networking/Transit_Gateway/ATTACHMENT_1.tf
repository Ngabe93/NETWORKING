resource "aws_ec2_transit_gateway_vpc_attachment" "ATTACHMENT_1" {
  transit_gateway_id = aws_ec2_transit_gateway.TRANSIT.id
  vpc_id             = aws_vpc.VPC_1.id
  subnet_ids         = aws_subnet.SUBNET_1.*.id
  tags={
    Name="ATTACHMENT_1"
  }
}
