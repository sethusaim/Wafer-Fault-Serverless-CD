variable "db_operation_pred_function_name" {
  default = "wafer-db_operation_pred"
  type    = string
}

variable "db_operation_pred_package_type" {
  default = "Image"
  type    = string
}

variable "db_operation_pred_lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}

variable "db_operation_pred_lambda_iam_role_arn" {
  default = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  type = string
}

variable "db_operation_pred_lambda_memory_size" {
  default = 2048
  type = number
}

variable "db_operation_pred_lambda_timeout" {
  default = 900
  type = number
}