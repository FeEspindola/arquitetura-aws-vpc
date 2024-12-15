
resource "aws_eip" "vpc_eip_1a" {
  domain = "vpc"

  tags = {
    Name = format("%s-eipe-la", var.project_name)
  }
}

resource "aws_eip" "vpc_eip_1b" {
  domain = "vpc"

  tags = {
    Name = format("%s-eipe-lb", var.project_name)
  }
}


resource "aws_eip" "vpc_eip_1c" {
  domain = "vpc"

  tags = {
    Name = format("%s-eipe-lc", var.project_name)
  }
}


resource "aws_nat_gateway" "nat_1a" {
  allocation_id = aws_eip.vpc_eip_1a.id
  subnet_id     = aws_subnet.public_subnet_1a.id

  tags = {
    Name = format("%s-nat-la", var.project_name)
  }
}


resource "aws_nat_gateway" "nat_1b" {
  allocation_id = aws_eip.vpc_eip_1b.id
  subnet_id     = aws_subnet.public_subnet_1b.id

  tags = {
    Name = format("%s-nat-lb", var.project_name)
  }
}



resource "aws_nat_gateway" "nat_1c" {
  allocation_id = aws_eip.vpc_eip_1c.id
  subnet_id     = aws_subnet.public_subnet_1c.id

  tags = {
    Name = format("%s-nat-lc", var.project_name)
  }
}
