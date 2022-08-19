variable "model_prediction_function_name" {
  default = "wafer-model_prediction"
  type    = string
}

variable "model_prediction_package_type" {
  default = "Image"
  type    = string
}

variable "lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}
