variable "data_transform_train_function_name" {
  default = "wafer-data_transform_train"
  type    = string
}

variable "data_transform_train_package_type" {
  default = "Image"
  type    = string
}

variable "lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}
