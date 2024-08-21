resource"aws_instance""INSTANCE_3"{
    
    ami="ami-0862be96e41dcbf74"
    instance_type="t2.micro"
    
    tags={
        Name="INSTANCE_3"                     
    }
     subnet_id=aws_subnet.SUBNET_3.id
    vpc_security_group_ids =[aws_security_group.SG-GROUP-3.id]
    key_name="Lesley"
}
resource"aws_key_pair""key-1"{
    key_name="Lesley"
    public_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDNEExo50lHXa2u0PBaBy1ORBmpuknagoxUU6vISmfXPi1CcDt8t3QGvnTHFyu91Rx0sWPobbektfFRk/FbulXyI2kff1tgXxvZTnlT8Yl1iq93WROz1LITLCve8/pdFGEYdbCoejrf4QrajgNRrJcvvMVV1XNZkjx1UXBxHBSqRgZxOZKw8kOUPlSWfDuChIbbN+tN2YUZnGHdAcY1Lm8ZEjbQ4GOtkviEfuu3hweaDXrflJEiNjFlR8KLwGvB3o6WuiQcm51VrcEh9pSsl9A0qPCkE8KQ39oUn2zQ9zQCOOC7wz4grQTcyCG11mW/NNJE1lSHcpvjT8jHmwactwPLk/U2hxe5u8o0umQmf2S8gZWtrFfI4O0fYPvXfH40wHMmRGjODQ8GLX1D6UeAeDb7PRwQPDfE2rT9eqnMzKEchBBY0sm33hLtDQ6hvP8lFtXI6UVNtcODJRKVA1Lu1STzkYtwPDqDNElMmk/s9KJFFSgUVMR1rZ67PNk/FxLBoMc= WORLD COMPUTERS@Darren"
}
# do well to create your own keys using ssh-keygen and attach the public to your instance as seen in the configuration above.