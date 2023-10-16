resource "aws_instance" "public_instance" {
  ami           = "ami-053b0d53c279acc90" # OS ubuntu
  instance_type = "t3.micro" 
  key_name = aws_key_pair.kevin_kp.key_name
  subnet_id = aws_subnet.subnet_kevin_public.id 
  vpc_security_group_ids = [aws_security_group.security_group04.id]

  tags = {
    Name = "PublicInstance"
  }
}