output "terraform_state_bucket" {
  value = aws_s3_bucket.terraform_state.arn
}

output "dynamodb_tf_state_lock_tablename" {
  value = aws_dynamodb_table.terraform_locks.name
}