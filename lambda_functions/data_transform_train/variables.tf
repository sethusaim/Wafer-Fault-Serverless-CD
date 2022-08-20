variable "data_transform_train_function_name" {
  default = "wafer-data_transform_train"
  type    = string
}

variable "data_transform_train_package_type" {
  default = "Image"
  type    = string
}

variable "data_transform_train_lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}

variable "data_transform_train_lambda_iam_role_arn" {
  default = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  type = string
}

variable "data_transform_train_lambda_memory_size" {
  default = 2048
  type = number
}

variable "data_transform_train_lambda_timeout" {
  default = 900
  type = number
}