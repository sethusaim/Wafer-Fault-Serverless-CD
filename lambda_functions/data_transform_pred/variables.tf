variable "data_transform_pred_function_name" {
  default = "wafer-data_transform_pred"
  type    = string
}

variable "data_transform_pred_package_type" {
  default = "Image"
  type    = string
}

variable "lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}
