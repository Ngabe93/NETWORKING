resource "aws_vpc_peering_connection" "PEERING" {
  peer_vpc_id   = aws_vpc.VPC_1.id
  vpc_id        = aws_vpc.VPC_2.id
  auto_accept=true
  
  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }
  tags={
    Name="PEERING"
  }
}

