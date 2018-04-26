variable region {}
variable stage {}

provider "aws" {
  region = "${var.region}"
}

module "S3" {
  source = "./S3"
  region = "${var.region}"
  stage  = "${var.stage}"
}
