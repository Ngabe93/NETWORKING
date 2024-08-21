resource "aws_ec2_transit_gateway" "TRANSIT" {
  description = "Example Transit Gateway"
  amazon_side_asn = 64512
  tags={
    Name="TRANSIT"
  }
}
