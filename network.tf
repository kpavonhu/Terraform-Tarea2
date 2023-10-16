resource "aws_vpc" "vpc_kevin" {
  cidr_block  = var.vpc_cidr

  tags = {
    Name = "DemoClase04"
  }
}

resource "aws_subnet" "subnet_kevin_public" {
  vpc_id     = aws_vpc.vpc_kevin.id
  cidr_block = var.cidr_public_subnet
  map_public_ip_on_launch = true

  tags = {
    Name = "SubnetPublic"
  }
}


resource "aws_subnet" "subnet_kevin_private" {
  vpc_id     = aws_vpc.vpc_kevin.id
  cidr_block = var.cidr_private_subnet

  tags = {
    Name = "SubnetPrivate"
  }
}


resource "aws_internet_gateway" "igw_kevin" {
  vpc_id = aws_vpc.vpc_kevin.id 

  tags = {
    Name = "DemoClase4-igw"
  }
}

resource "aws_route_table" "rt_kevin" {
  vpc_id = aws_vpc.vpc_kevin.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_kevin.id
  }

  tags = {
    Name = "PublicRouteTable"
  }
}

resource "aws_route_table_association" "association_public" {
  subnet_id = aws_subnet.subnet_kevin_public.id
  route_table_id = aws_route_table.rt_kevin.id
}
