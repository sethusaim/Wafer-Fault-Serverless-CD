resource "aws_iam_role" "lambda_iam" {
  name               = var.lambda_iam_role_name
  assume_role_policy = data.local_file.lambda_iam_role_file.content
}


data "local_file" "lambda_iam_role_file" {
  filename = "./data/lambda_iam_role.json"
}
