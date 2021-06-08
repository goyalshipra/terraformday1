provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "test_shipra" {
  bucket = "test-shipra-1"
  acl    = "private"

  logging {
    target_bucket = aws_s3_bucket.log_bucket_shipra.id
    target_prefix = "log/"
  }

  tags = {
    name = "shipra"
  }

  versioning {
    enabled = true
  }

}

resource "aws_s3_bucket" "log_bucket_shipra" {
  bucket = var.bucket_name
  acl    = "log-delivery-write"
}