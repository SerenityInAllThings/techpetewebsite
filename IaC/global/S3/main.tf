variable region {}
variable stage {}

resource "aws_s3_bucket" "websiteBucket" {
  bucket = "${var.stage == "prod" ? "" : var.stage}blog.techpete.com"
  acl    = "public-read"
  region = "sa-east-1"

  website {
      index_document = "index.html"
      error_document = "error.html"
  }

  versioning {
    enabled = true
  }
}