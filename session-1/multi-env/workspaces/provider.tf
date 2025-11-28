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
    bucket = "devopsify-remote-state"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "devopsify-locking"
    encrypt        = true
    }
}

provider "aws" {
  # Configuration options
}