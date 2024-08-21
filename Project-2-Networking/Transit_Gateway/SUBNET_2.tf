resource "aws_subnet" "SUBNET_2" {
  vpc_id     = aws_vpc.VPC_2.id
  cidr_block = "12.0.1.0/24"

  tags = {
    Name = "SUBNET_2"
  }
}