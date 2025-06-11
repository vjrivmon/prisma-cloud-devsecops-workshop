provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "a2af1827-6561-4f24-a6bd-b1c1dd44efb8"
    git_commit           = "acf67bdc1f1963ce632da4bcee5eafab1831f261"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-06-11 16:26:57"
    git_last_modified_by = "126879901+vjrivmon@users.noreply.github.com"
    git_modifiers        = "126879901+vjrivmon"
    git_org              = "vjrivmon"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
