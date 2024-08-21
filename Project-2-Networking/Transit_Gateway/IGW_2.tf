resource "aws_internet_gateway" "IGW_2" {
  vpc_id = aws_vpc.VPC_2.id

  tags = {
    Name = "IGW_2"
  }
}