variable region {
  default = "sa-east-1"
}

variable stage {
  default = "prod"
}

#The minimum S3 permissions necessary for interaction with the backend is described here: https://goo.gl/PF7nNQ
terraform {
  backend "s3" {
    bucket = "petetech-terraformstates"
    key    = "website/prod/state.tfstate"
    region = "sa-east-1"
  }
}

module "main" {
  source = "../global"
  region = "${var.region}"
  stage  = "${var.stage}"
}
