provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "020812d7-a353-4aaf-a4cd-17f118db7024"
    git_commit           = "375e52ced8895985876ee12a2cb83daaed639b01"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-04-10 16:19:23"
    git_last_modified_by = "50459521+apw7@users.noreply.github.com"
    git_modifiers        = "50459521+apw7"
    git_org              = "apw7"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

