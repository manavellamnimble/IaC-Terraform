provider "aws" {
  version = "~> 2.68"
  region  = var.region
  profile = var.profile
}

resource "aws_s3_bucket" "example" {
  bucket = "manavellam-terratest"
  acl = "private"
}
# Adds EC2 instance after creatingS3
resource "aws_instance" "example" {
  ami           = var.amis[var.region]
  instance_type = "t2.micro"
  depends_on = [aws_s3_bucket.example]
}

