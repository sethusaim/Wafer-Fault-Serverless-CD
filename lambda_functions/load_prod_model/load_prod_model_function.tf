resource "aws_lambda_function" "load_prod_model_lambda" {
  function_name = var.load_prod_model_function_name
  role          = aws_iam_role.lambda_iam.arn
  package_type  = var.load_prod_model_package_type
  image_uri     = data.local_file.load_prod_model_lambda_uri_file.content
}

data "local_file" "load_prod_model_lambda_uri_file" {
  filename = "./lambda_function_uri/load_prod_model_uri.txt"
}