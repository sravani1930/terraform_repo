terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.22.0"
    }
  }
}

terraform {
  backend "s3" {
   
    }
}

provider "aws" {
  # Configuration options
}