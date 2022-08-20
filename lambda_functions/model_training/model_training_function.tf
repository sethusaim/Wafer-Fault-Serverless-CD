resource "aws_lambda_function" "model_training_lambda" {
  function_name = var.model_training_function_name
  role          = aws_iam_role.model_training_lambda_iam.arn
  package_type  = var.model_training_package_type
  image_uri     = data.local_file.model_training_lambda_uri_file.content
}

data "local_file" "model_training_lambda_uri_file" {
  filename = "./lambda_function_manifests/wafer_model_training_uri.txt"
}
