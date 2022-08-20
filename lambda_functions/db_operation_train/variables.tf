variable "db_operation_train_function_name" {
  default = "wafer-db_operation_train"
  type    = string
}

variable "db_operation_train_package_type" {
  default = "Image"
  type    = string
}

variable "db_operation_train_lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}

variable "db_operation_train_lambda_iam_role_arn" {
  default = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  type = string
}
