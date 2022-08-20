resource "aws_lambda_function" "pred_data_validation_lambda" {
  function_name = var.pred_data_validation_function_name
  role          = aws_iam_role.pred_data_validation_lambda_iam.arn
  package_type  = var.pred_data_validation_package_type
  image_uri     = data.local_file.pred_data_validation_lambda_uri_file.content
  memory_size   = var.pred_data_validation_lambda_memory_size
  timeout       = var.pred_data_validation_lambda_timeout
}

data "local_file" "pred_data_validation_lambda_uri_file" {
  filename = "./lambda_function_manifests/wafer_pred_data_validation_uri.txt"
}
