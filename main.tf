terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.12.0"
}

provider "aws" {
 region = "eu-north-1"
}

resource "aws_instance" "app_server" {
 ami ="ami-042b4708xxxxxxxx"  - change the id 
 instance_type ="t3.micro"

 tags = {
  Name = "Terraform_Demo"
 }
}
