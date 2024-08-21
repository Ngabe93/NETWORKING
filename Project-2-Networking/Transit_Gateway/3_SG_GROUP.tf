resource "aws_security_group" "SG-GROUP-3" {
  
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.VPC_3.id
  
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
    Name = "3_SG_GROUP"
  }
}
