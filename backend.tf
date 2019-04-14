terraform {
  backend "s3" {
    bucket ="nywilken-meetups"
    key    = "golangnyc/terraform.tfstate"
    region = "us-east-1"
  }
}

