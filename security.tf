resource "aws_security_group" "security_group04" {
  name        = var.securitygroup_name
  description = "Demo Security Group"
  vpc_id      = aws_vpc.vpc_kevin.id

  ingress {
    description      = "SSH access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.securitygroup_name
  }
}

resource "aws_key_pair" "kevin_kp" {
  key_name   = "kevin-keipair"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCj0AAH2nJ3yB+AiMPhczB7gJc7NrOCs1+QuDooxpgCAcH3faYTxwo+qrrMOMG53+fxHR0nLV3VSe/b9YpG1Ki1xzRbCTW6+CKGZHtrpJFwubt2Yu9aPhIo28RUh+TxSwFFo/y0VeZp06atA8e/TIMnp65l6kTS6hxWKFpwD/bF8Egu9WIYEfQMEQF266O7+PhjJrho1Coq2Kgckw1V91p2LPBxfdY2mcvCA4wld5KXdQNAIs+xG89VqrXeDj7VhMgnPwzMro6W9HfpCV94orVEO7cP+aR4Qpk6HPiNS9R0Us138Nb3RDqhKatifahkQDjYuS3x38bSbvt+eHcys1/vM7A6epKwSldKjRSNNwIeO8OVy08kENWW+5IzmY8zll8yTc2j3P0OOUbJ0rM6HhtQYXfm8WRsGdFwFU94AR5IvHykA7PwRLdGrSFtJNoyVqaayUYp/vsDx17BNIiA9kBSNiKBuucRbBG6a4IPboVhusGiOJY29JzI6ewRkou5UeM= vmwarem\\kpavon@kpavon-z02"
}

