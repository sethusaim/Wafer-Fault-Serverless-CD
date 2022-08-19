resource "aws_lambda_function" "model_prediction_lambda" {
  function_name = var.model_prediction_function_name
  role          = aws_iam_role.lambda_iam.arn
  package_type  = var.model_prediction_package_type
  image_uri     = data.local_file.model_prediction_lambda_uri_file.content
}

data "local_file" "model_prediction_lambda_uri_file" {
  filename = "./lambda_function_uri/model_prediction_uri.txt"
}
