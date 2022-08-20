variable "model_training_function_name" {
  default = "wafer-model_training"
  type    = string
}

variable "model_training_package_type" {
  default = "Image"
  type    = string
}

variable "model_training_lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}

variable "model_training_lambda_iam_role_arn" {
  default = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  type = string
}

variable "model_training_lambda_memory_size" {
  default = 2048
  type = number
}

variable "model_training_lambda_timeout" {
  default = 900
  type = number
}