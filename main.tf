provider "aws" {
  version = "~> 2.68"
  region = var.region
  profile = "default"
}

resource "aws_instance" "example" {
  ami = var.amis[var.region]
  instance_type = "t2.micro"
}

