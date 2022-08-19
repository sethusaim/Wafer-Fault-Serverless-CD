variable "train_data_validation_function_name" {
  default = "wafer-train_data_validation"
  type    = string
}

variable "train_data_validation_package_type" {
  default = "Image"
  type    = string
}

variable "lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}
