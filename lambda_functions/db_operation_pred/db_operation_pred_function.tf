resource "aws_lambda_function" "db_operation_pred_lambda" {
  function_name = var.db_operation_pred_function_name
  role          = aws_iam_role.db_operation_pred_lambda_iam.arn
  package_type  = var.db_operation_pred_package_type
  image_uri     = data.local_file.db_operation_pred_lambda_uri_file.content
  memory_size = var.db_operation_pred_lambda_memory_size
  timeout = var.db_operation_pred_lambda_timeout
}

data "local_file" "db_operation_pred_lambda_uri_file" {
  filename = "./lambda_function_manifests/wafer_db_operation_pred_uri.txt"
}
