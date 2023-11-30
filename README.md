# Terraform AWS RDS MySQL Module

## Overview

This Terraform module creates an AWS RDS MySQL instance within a VPC, spanning multiple availability zones.

## Usage

```hcl
module "rds_mysql" {
  source                    = "git::https://example.com/path/to/terraform-aws-rds-mysql.git"
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
  db_password               = "YourSecurePassword123"
  db_subnet_group_name      = "mydbsubnetgroup"
}
