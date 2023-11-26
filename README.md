My tf module to provision an rds mysql database with custom vpc and rds deployed on a private subnet 



Sample Usage

module "eks-module" {
  source         = "github.com/ooghenekaro/module-test"
  region         = "Enter your Providers region here"
  vpc_cidr       = "10.0.0.0/16"
  dns_hostnames  = true
  dns_support    = true
  pub_one_cidr   = "10.0.1.0/24"
  pub_two_cidr   = "10.0.2.0/24"
  priv_one_cidr  = "10.0.3.0/24"
  priv_two_cidr  = "10.0.4.0/24"
  az_one         = "Enter your first az"
  az_two         = "Enter your second az"
  vpc_id         = "aws_vpc.eks_vpc.id"
  eks_version    = "1.26"
  ami_type       = "AL2_x86_64"
  instance_types = ["t3.small", "t3.medium", "t3.large"]
  capacity_type  = "ON_DEMAND"

}



