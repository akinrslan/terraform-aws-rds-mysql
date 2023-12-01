Copy code
# Terraform AWS RDS Module

This Terraform module provisions an AWS RDS instance.

## Usage

```hcl
module "rds" {
  source          = "akinrslan/terraform-AWS-RDS-Module.git"
  vpc_cidr        = "10.0.0.0/16"
  subnet_cidr     = "10.0.3.0/24"
  subnet_cidr_2   = "10.0.4.0/24"
  db_username     = "admin"
  db_password     = "yourpassword"
  region          = "us-west-2"
  az_one          = "Enter your first az"
  az_two          = "Enter your second az"
}
```hcl
