resource "aws_lambda_function" "clustering_lambda" {
  function_name = var.clustering_function_name
  role          = aws_iam_role.clustering_lambda_iam.name
  package_type  = var.clustering_package_type
  image_uri     = data.local_file.clustering_lambda_uri_file.content
}

data "local_file" "clustering_lambda_uri_file" {
  filename = "./lambda_function_manifests/wafer_clustering_uri.txt"
}
