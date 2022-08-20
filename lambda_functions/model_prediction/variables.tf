variable "model_prediction_function_name" {
  default = "wafer-model_prediction"
  type    = string
}

variable "model_prediction_package_type" {
  default = "Image"
  type    = string
}

variable "model_prediction_lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}

variable "model_prediction_lambda_iam_role_arn" {
  default = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  type = string
}
