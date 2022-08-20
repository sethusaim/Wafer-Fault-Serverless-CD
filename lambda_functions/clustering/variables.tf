variable "clustering_function_name" {
  default = "wafer-clustering"
  type    = string
}

variable "clustering_package_type" {
  default = "Image"
  type    = string
}

variable "clustering_lambda_iam_role_name" {
  default = "clustering_lambda_iam_role"
  type    = string
}

variable "clustering_lambda_iam_role_arn" {
  default = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  type    = string
}

variable "clustering_lambda_memory_size" {
  default = 2048
  type    = number
}

variable "clustering_lambda_timeout" {
  default = 900
  type    = number
}