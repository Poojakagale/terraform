terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.73"
    }
  }
}
provider "aws"{
    region = "us-east-1"
    profile = "awsprofile"
}
resource "aws_instance" "ec2_1"{
    ami = "ami-0557a15b87f6559cf"
    instance_type = "t2.micro"
    tags = {
        Name = "jenkins-tint"
    }
}