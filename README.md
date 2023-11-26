# Terraform AWS RDS MySQL Module

## Description

This Terraform module deploys an AWS RDS MySQL database in a custom VPC. The RDS instance is placed in a private subnet for enhanced security.

## Usage

```hcl
module "rds_mysql" {
  source                    = "./terraform-aws-rds-mysql"
  region                    = "us-west-2"
  vpc_cidr                  = "10.0.0.0/16"
  private_subnet_1_cidr     = "10.0.1.0/24"
  availability_zone_1       = "us-west-2a"
  private_subnet_2_cidr     = "10.0.2.0/24"
  availability_zone_2       = "us-west-2b"
  db_instance_identifier    = "mydbinstance"
  allocated_storage         = 20
  instance_class            = "db.t2.micro"
  db_username               = "admin"
  db_password = "YourSecurePassword123"
