resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "${data.aws_caller_identity.current.account_id}-nickd-terragrunt-demo"
  billing_mode   = "PROVISIONED"
  read_capacity  = var.dynamodb_demo_read_capacity
  write_capacity = var.dynamodb_demo_write_capacity
  hash_key       = "UserId"

  attribute {
    name = "UserId"
    type = "S"
  }
}
