terraform {
  backend "s3" {
    bucket = "wafer-tf-cd-state-sethu"
    key    = "tf_state"
    region = "us-east-1"
  }
}


module "clustering_lambda_function" {
  source = "./lambda_functions/clustering"
}

module "data_transform_pred_function" {
  source = "./lambda_functions/data_transform_pred"
}

module "data_transform_train_function" {
  source = "./lambda_functions/data_transform_train"
}

module "db_operation_pred_function" {
  source = "./lambda_functions/db_operation_pred"
}

module "db_operation_train_function" {
  source = "./lambda_functions/db_operation_train"
}

module "load_prod_model_function" {
  source = "./lambda_functions/load_prod_model"
}

module "model_prediction_function" {
  source = "./lambda_functions/model_prediction"
}

module "model_training_function" {
  source = "./lambda_functions/model_training"
}

module "pred_data_validation_function" {
  source = "./lambda_functions/pred_data_validation"
}

module "train_data_validation_function" {
  source = "./lambda_functions/train_data_validation"
}

module "preprocessing_pred_function" {
  source = "./lambda_functions/preprocessing_pred"
}

module "preprocessing_train_function" {
  source = "./lambda_functions/preprocessing_train"
}
