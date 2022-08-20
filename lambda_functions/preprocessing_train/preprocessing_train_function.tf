resource "aws_lambda_function" "preprocessing_train_lambda" {
  function_name = var.preprocessing_train_function_name
  role          = aws_iam_role.preprocessing_train_lambda_iam.arn
  package_type  = var.preprocessing_train_package_type
  image_uri     = data.local_file.preprocessing_train_lambda_uri_file.content
}

data "local_file" "preprocessing_train_lambda_uri_file" {
  filename = "./lambda_function_manifests/wafer_preprocessing_train_uri.txt"
}
