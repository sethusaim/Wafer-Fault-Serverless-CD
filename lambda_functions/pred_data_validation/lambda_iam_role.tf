resource "aws_iam_role" "pred_data_validation_lambda_iam" {
  name               = var.pred_data_validation_lambda_iam_role_name
  assume_role_policy = data.local_file.lambda_iam_role_file.content
}

data "local_file" "lambda_iam_role_file" {
  filename = "./data/lambda_iam_role.json"
}

resource "aws_iam_role_policy_attachment" "clustering_lambda_iam_policy_attachment" {
  role = aws_iam_role.pred_data_validation_lambda_iam.name
  policy_arn = var.pred_data_validation__lambda_iam_role_arn
}
