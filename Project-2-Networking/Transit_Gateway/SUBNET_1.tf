resource "aws_subnet" "SUBNET_1" {
  vpc_id     = aws_vpc.VPC_1.id
  cidr_block = "17.0.1.0/24"

  tags = {
    Name = "SUBNET_1"
  }
}