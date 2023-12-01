# Terraform AWS RDS MySQL Module

## Overview

This Terraform module creates an AWS RDS MySQL instance within a VPC, spanning multiple availability zones.

## Usage

```hcl
module "rds_mysql" {
  module "rds-mysql" {
  source  = "akinrslan/rds-mysql/aws"
  version = "1.0.6"
  region                    = "your region"
  vpc_cidr                  = "10.0.0.0/16"
  private_subnet_1_cidr     = "10.0.1.0/24"
  availability_zone_1       = "your az"
  private_subnet_2_cidr     = "10.0.2.0/24"
  availability_zone_2       = "your az"
  db_instance_identifier    = "mydbinstance"
  allocated_storage         = 20
  instance_class            = "db.t2.micro"
  db_username               = "admin"
  db_password               = "YourSecurePassword123"
  db_subnet_group_name      = "mydbsubnetgroup"
}


```hcl


