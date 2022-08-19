variable "load_prod_model_function_name" {
  default = "wafer-load_prod_model"
  type    = string
}

variable "load_prod_model_package_type" {
  default = "Image"
  type    = string
}

variable "lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}
