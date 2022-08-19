terraform {
  backend "s3" {
    bucket = "wafer-tf-state-sethu"
    key    = "tf_state"
    region = "us-east-1"
  }
}

module "clustering_lambda_function" {
  source = "./lambda_functions/clustering"
}