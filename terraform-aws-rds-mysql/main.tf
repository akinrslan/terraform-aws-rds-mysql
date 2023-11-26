

resource "aws_vpc" "custom_vpc" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws_vpc.custom_vpc.id
  cidr_block              = var.private_subnet_1_cidr
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = false
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id                  = aws_vpc.custom_vpc.id
  cidr_block              = var.private_subnet_2_cidr
  availability_zone       = var.availability_zone_2
  map_public_ip_on_launch = false
}

resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "mydbsubnetgroup"
  subnet_ids = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id]
}

resource "aws_db_instance" "rds_instance" {
  identifier             = var.db_instance_identifier
  allocated_storage      = var.allocated_storage
  engine                 = "mysql"
  instance_class         = var.instance_class
  username               = var.db_username
  password               = var.db_password
  multi_az               = false
  publicly_accessible   = false
  vpc_security_group_ids = []  # You may want to define security groups here if needed
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name  # Reference the DB subnet group

  # Other parameters can be added as needed
}

