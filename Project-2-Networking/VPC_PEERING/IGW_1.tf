resource "aws_internet_gateway" "IGW_1" {
  vpc_id = aws_vpc.VPC_1.id

  tags = {
    Name = "IGW_1"
  }
}