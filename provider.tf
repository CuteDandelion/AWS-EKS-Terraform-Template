# configure aws provider
provider "aws" {
  region  = var.region
  profile = "default"
}

# configure helm provider
provider "helm" {
  kubernetes = {
    config_path = "~/.kube/config"
  }
}

# configure backend
terraform {
  backend "s3" {
    bucket         = "my-eks-cluster-workspace"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    profile        = "default"
  }
}
