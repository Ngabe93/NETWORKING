resource "aws_security_group" "SG-GROUP-1" {
  
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.VPC_1.id
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress{
    from_port=22
    to_port=22
    protocol="tcp"
    cidr_blocks=["0.0.0.0/0"]
  }
  tags = {
    Name = "1_SG_GROUP"
  }
}
