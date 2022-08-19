variable "preprocessing_pred_function_name" {
  default = "wafer-preprocessing_pred"
  type    = string
}

variable "preprocessing_pred_package_type" {
  default = "Image"
  type    = string
}

variable "lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}
