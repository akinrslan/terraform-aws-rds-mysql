Copy code
# Terraform AWS RDS Module

This Terraform module provisions an AWS RDS instance.

## Usage

module "rds_mysql" {
  source                = "akinrslan/terraform-AWS-RDS-Module/aws"
  version               = "1.0.1"
  db_instance_identifier = "mydbinstance"
  allocated_storage     = 20
  instance_class        = "db.t2.micro"
  db_username           = "admin"
  db_password           = "yourpassword"
  region                = "us-west-2"
  vpc_cidr              = "10.0.0.0/16"
  subnet_cidr           = "10.0.3.0/24"
  subnet_cidr_2         = "10.0.4.0/24"
  az_one                = "Enter your first az"
  az_two                = "Enter your second az"
}