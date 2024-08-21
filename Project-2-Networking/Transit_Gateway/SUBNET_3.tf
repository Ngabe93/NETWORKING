resource "aws_subnet" "SUBNET_3" {
  vpc_id     = aws_vpc.VPC_3.id
  cidr_block = "13.0.1.0/24"

  tags = {
    Name = "SUBNET_3"
  }
}