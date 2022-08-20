resource "aws_lambda_function" "preprocessing_pred_lambda" {
  function_name = var.preprocessing_pred_function_name
  role          = aws_iam_role.lambda_iam.arn
  package_type  = var.preprocessing_pred_package_type
  image_uri     = data.local_file.preprocessing_pred_lambda_uri_file
}

data "local_file" "preprocessing_pred_lambda_uri_file" {
  filename = "./lambda_function_manifests/wafer_preprocessing_pred_uri.txt"
}
