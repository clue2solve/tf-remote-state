provider "aws" {
  region = "us-west-2"
  profile = "default"
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "rao-tf-state"
    key            = "global/s3/terraform.tfstate"
    region         = "us-west-2"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "tf-state-locks"
    encrypt        = true
  }
}