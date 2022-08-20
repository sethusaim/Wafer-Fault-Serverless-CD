variable "load_prod_model_function_name" {
  default = "wafer-load_prod_model"
  type    = string
}

variable "load_prod_model_package_type" {
  default = "Image"
  type    = string
}

variable "load_prod_model_lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}

variable "load_prod_model_lambda_iam_role_arn" {
  default = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  type = string
}

variable "load_prod_model_lambda_memory_size" {
  default = 2048
  type = number
}

variable "load_prod_model_lambda_timeout" {
  default = 900
  type = number
}