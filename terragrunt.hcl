
remote_state {
  backend = "s3"
  config = {
    bucket          = "${get_aws_account_id()}-nickdoyle-tf-backend"
    region          = "ap-southeast-2"
    key             = "terraform.tfstate"
    encrypt         = true
    dynamodb_table  = "${get_aws_account_id()}-nickdoyle-tf-locktable"
  }
}

include {
  path = "env/${get_aws_account_id()}.hcl"
}
