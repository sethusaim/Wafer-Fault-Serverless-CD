resource "aws_lambda_function" "clustering_lambda" {
  function_name = var.clustering_function_name
  role          = aws_iam_role.clustering_lambda_iam.name
  package_type  = var.clustering_package_type
  image_uri     = data.local_file.clustering_lambda_uri_file.content
  memory_size   = var.clustering_lambda_memory_size
  timeout       = var.clustering_lambda_timeout
}

data "local_file" "clustering_lambda_uri_file" {
  filename = "./lambda_function_manifests/wafer_clustering_uri.txt"
}
