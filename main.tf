provider "aws" {
    region="us-east-1"
}

resource "aws_s3_bucket" "test_shipra" {
    bucket ="test-shipra-1"
    acl = "private"

    tags = {
        name ="shipra"
    }
}