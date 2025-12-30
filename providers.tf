terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}

# S3 Backend--

terraform {
  backend "s3" {
    bucket = "vp-test-22052022"
    dynamodb_table = "lct-lock"
    key = "dev/terraform.tfstate"
    region = "us-east-1"
    
  }
}


provider "aws" {
  region = "us-east-1"
}
