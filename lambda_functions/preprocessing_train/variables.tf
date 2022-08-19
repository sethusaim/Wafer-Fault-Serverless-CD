variable "preprocessing_train_function_name" {
  default = "wafer-preprocessing_train"
  type    = string
}

variable "preprocessing_train_package_type" {
  default = "Image"
  type    = string
}

variable "lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}
