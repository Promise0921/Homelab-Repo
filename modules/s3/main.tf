## Creating the name of the bucket
resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = var.bucket_name
}

## Creating the bucket versioning
resource "aws_s3_bucket_versioning" "my_s3_bucket" {
  bucket = aws_s3_bucket.my_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

## Creating the bucket server side encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "my_s3_bucket" {
  bucket = aws_s3_bucket.my_s3_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}