resource "aws_ec2_transit_gateway_vpc_attachment" "ATTACHMENT_2" {
  transit_gateway_id = aws_ec2_transit_gateway.TRANSIT.id
  vpc_id             = aws_vpc.VPC_2.id
  subnet_ids         = aws_subnet.SUBNET_2.*.id
  tags={
    Name="ATTACHMENT_2"
  }
}
