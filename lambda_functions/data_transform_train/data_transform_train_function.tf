resource "aws_lambda_function" "data_transform_train_lambda" {
  function_name = var.data_transform_train_function_name
  role          = aws_iam_role.data_transform_train_lambda_iam.arn
  package_type  = var.data_transform_train_package_type
  image_uri     = data.local_file.data_transform_train_lambda_uri_file.content
}

data "local_file" "data_transform_train_lambda_uri_file" {
  filename = "./lambda_function_manifests/wafer_data_transform_train_uri.txt"
}
