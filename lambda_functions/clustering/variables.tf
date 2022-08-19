variable "clustering_function_name" {
  default = "wafer-clustering"
  type    = string
}

variable "clustering_package_type" {
  default = "Image"
  type    = string
}

variable "lambda_iam_role_name" {
  default = "lambda_iam_role"
  type    = string
}
