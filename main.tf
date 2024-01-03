terraform {
  backend "s3" {
    bucket  = "dev-eks-cluster-mayor.io"
    key     = "dev-eks-cluster-mayor.io/dev"
    region  = "eu-central-1"
    profile = "default"
  }
}

module "my_secret_manager" {
  source                  = "./modules/secrets_manager"
  name                    = var.name
  secret_data             = var.secret_data
  recovery_window_in_days = var.recovery_window_in_days
  kms_key_id              = var.kms_key_id
}

