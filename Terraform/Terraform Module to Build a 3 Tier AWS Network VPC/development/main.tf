# Configure provider
provider "aws" {
  region = var.region
  #   profile = "terraform-user"
}

# Create vpc
module "vpc" {
  source                             = "../modules/vpc"
  project-name                       = var.project-name
  region                             = var.region
  vpc-cidr-block                     = var.vpc-cidr-block
  public-subnet-cidr_block-az1       = var.public-subnet-cidr_block-az1
  public-subnet-cidr_block-az2       = var.public-subnet-cidr_block-az2
  private-subnet-cidr_block-az1      = var.private-subnet-cidr_block-az1
  private-subnet-cidr_block-az2      = var.private-subnet-cidr_block-az2
  private-data-subnet-cidr_block-az1 = var.private-data-subnet-cidr_block-az1
  private-data-subnet-cidr_block-az2 = var.private-data-subnet-cidr_block-az2
  public-route-table-cidr_block      = var.public-route-table-cidr_block

}
