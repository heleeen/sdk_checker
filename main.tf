terraform {
  backend "s3" {
    region = "ap-northeast-1"
    key    = "sdk_checker.tfstate"
  }
}

provider "aws" {
  region = var.region
}

module "function" {
  source = "git@github.com:heleeen/heleeen_terraform.git//lambda?ref=v0.6"
  name   = var.name
}
