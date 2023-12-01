terraform {
  required_providers {
    aws = ">= 3.0.0"
  }
}

provider "aws" {
  region = "us-west-2"  # Update this with the correct region code
}
