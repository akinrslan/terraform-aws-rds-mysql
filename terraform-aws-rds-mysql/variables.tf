variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "private_subnet_1_cidr" {
  description = "CIDR block for the first private subnet"
  type        = string
}

variable "availability_zone_1" {
  description = "Availability Zone for the first private subnet"
  type        = string
}

variable "private_subnet_2_cidr" {
  description = "CIDR block for the second private subnet"
  type        = string
}

variable "availability_zone_2" {
  description = "Availability Zone for the second private subnet"
  type        = string
}

variable "db_instance_identifier" {
  description = "Identifier for the RDS instance"
  type        = string
}

variable "allocated_storage" {
  description = "Allocated storage for the RDS instance"
  type        = number
}

variable "instance_class" {
  description = "Instance class for the RDS instance"
  type        = string
}

variable "db_username" {
  description = "Username for the RDS instance"
  type        = string
}

variable "db_password" {
  description = "Password for the RDS instance master user"
  type        = string
  # Ensure that the password meets AWS RDS requirements
  validation {
    condition     = length(var.db_password) >= 8 && length(var.db_password) <= 41
    error_message = "Password must be between 8 and 41 characters long."
  }
}


variable "db_subnet_group_name" {
  description = "Name for the RDS DB subnet group"
  type        = string
}
