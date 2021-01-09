terraform {
  backend "s3" {
    dynamodb_table = "cirrius-backend-locks-global"
    encrypt        = true
    key            = "suspicious-tesla/terraform/github-repos/terraform.tfstate"
    region         = "eu-west-1"
    bucket         = "cirrius-backend-tfstate-global"
  }
}