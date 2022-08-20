resource "aws_lambda_function" "preprocessing_pred_lambda" {
  function_name = var.preprocessing_pred_function_name
  role          = aws_iam_role.preprocessing_pred_lambda_iam.arn
  package_type  = var.preprocessing_pred_package_type
  image_uri     = data.local_file.preprocessing_pred_lambda_uri_file.content
  memory_size   = var.preprocessing_pred_lambda_memory_size
  timeout       = var.preprocessing_pred_lambda_timeout
}

data "local_file" "preprocessing_pred_lambda_uri_file" {
  filename = "./lambda_function_manifests/wafer_preprocessing_pred_uri.txt"
}
