resource "aws_internet_gateway" "IGW_3" {
  vpc_id = aws_vpc.VPC_3.id

  tags = {
    Name = "IGW_3"
  }
}