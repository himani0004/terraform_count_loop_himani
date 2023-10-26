resource "aws_s3_bucket" "s3_count" {
  count         = length(var.bucket_name)
  bucket        = var.bucket_name[count.index]
  force_destroy = var.force_destroy1 //bucket delete s3 bucket
  tags          = var.tag_himani
}

resource "aws_s3_bucket_acl" "himani_acl" {
  count  = length(var.bucket_name)
  bucket = aws_s3_bucket.s3_count[count.index].id
  acl    = var.acl1
}

resource "aws_s3_bucket_ownership_controls" "himani_ownership" {
  count  = length(var.bucket_name)
  bucket = aws_s3_bucket.s3_count[count.index].id
  rule {
    object_ownership = var.ownership1
  }
}

resource "aws_s3_bucket_versioning" "himani_versioning" {

  count  = length(var.bucket_name)
  bucket = aws_s3_bucket.s3_count[count.index].id
  versioning_configuration {
    status = var.status1
  }
}

