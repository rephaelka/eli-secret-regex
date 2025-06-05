resource "aws_s3_bucket" "sample_bucket_1" {
  # bucket is not encrypted
  bucket = "${local.resource_prefix.value}-sample-bucket-1"
  acl    = "private"
  versioning {
    enabled = true
  }
  force_destroy = true
  tags = {
    git_commit           = "77e689e3acd6a0e1e79a5f78ddce241085dac820"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2022-01-05 09:41:31"
    git_last_modified_by = "tron47@gmail.com"
    git_modifiers        = "tron47"
    git_org              = "tronxd"
    git_repo             = "terraform_samples"
    yor_trace            = "c0d78c48-5f9e-4187-a04e-a6bb0e7ed9f8"
  }
}

resource "aws_s3_bucket" "sample_bucket_2" {
  # bucket is not encrypted
  bucket = "${local.resource_prefix.value}-sample-bucket-2"
  acl    = "private"
  versioning {
    enabled = true
  }
  force_destroy = true
  tags = {
    git_commit           = "77e689e3acd6a0e1e79a5f78ddce241085dac820"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2022-01-05 09:41:31"
    git_last_modified_by = "tron47@gmail.com"
    git_modifiers        = "tron47"
    git_org              = "tronxd"
    git_repo             = "terraform_samples"
    yor_trace            = "3f1c4edc-992e-429a-8300-f6b48b795c66"
  }
}

resource "aws_s3_bucket" "sample_bucket_3" {
  # bucket is not encrypted
  bucket = "${local.resource_prefix.value}-sample-bucket-3"
  acl    = "private"
  versioning {
    enabled = true
  }
  force_destroy = true
  tags = {
    git_commit           = "77e689e3acd6a0e1e79a5f78ddce241085dac820"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2022-01-05 09:41:31"
    git_last_modified_by = "tron47@gmail.com"
    git_modifiers        = "tron47"
    git_org              = "tronxd"
    git_repo             = "terraform_samples"
    yor_trace            = "20295b9d-6fb8-4280-9a57-b2b9c22afe63"
  }
}

resource "aws_s3_bucket" "sample_bucket_4" {
  # bucket is not encrypted
  bucket = "${local.resource_prefix.value}-sample-bucket-4"
  acl    = "private"
  versioning {
    enabled = true
  }
  force_destroy = true
  tags = {
    git_commit           = "77e689e3acd6a0e1e79a5f78ddce241085dac820"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2022-01-05 09:41:31"
    git_last_modified_by = "tron47@gmail.com"
    git_modifiers        = "tron47"
    git_org              = "tronxd"
    git_repo             = "terraform_samples"
    yor_trace            = "00398d29-90e1-406f-b273-2525d31c26b2"
  }
}

resource "aws_s3_bucket" "sample_bucket_5" {
  # bucket is not encrypted
  bucket = "${local.resource_prefix.value}-sample-bucket-5"
  acl    = "private"
  versioning {
    enabled = true
  }
  force_destroy = true
  tags = {
    git_commit           = "77e689e3acd6a0e1e79a5f78ddce241085dac820"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2022-01-05 09:41:31"
    git_last_modified_by = "tron47@gmail.com"
    git_modifiers        = "tron47"
    git_org              = "tronxd"
    git_repo             = "terraform_samples"
    yor_trace            = "474aa4af-b536-4c80-9d2a-ae18d3479d04"
  }
}

resource "aws_s3_bucket" "untagged" {
  # bucket is not encrypted
  bucket = "${local.resource_prefix.value}-untagged"
  acl    = "private"
  versioning {
    enabled = true
  }
  force_destroy = true
}