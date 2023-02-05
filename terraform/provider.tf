variable "access_key" {}
variable "secret_key" {}
provider "aws" {
  
  access_key = var.access_key
  secret_key = var.secret_key

  profile = "terraform"
  region  = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.21"
    }
  }
}
