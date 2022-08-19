resource "aws_lambda_function" "test_lambda" {
  function_name = var.data_transform_pred_function_name
  role          = aws_iam_role.lambda_iam.arn
  package_type  = var.data_transform_pred_package_type
  image_uri     = data.local_file.test_lambda_uri_file.content
}

data "local_file" "test_lambda_uri_file" {
  filename = "./lambda_function_uri/data_transform_pred_uri.txt"
}
