variable "db_operation_pred_function_name" {
  default = "wafer-db_operation_pred"
  type    = string
}

variable "db_operation_pred_package_type" {
  default = "Image"
  type    = string
}

variable "lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}
