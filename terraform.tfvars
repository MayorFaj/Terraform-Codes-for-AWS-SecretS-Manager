aws_region = "eu-central-1"

name = "mayorio-secret-name"

##edit accordinly
secret_data = {
  engine   = "mariadb",
  host     = "mydb.cluster-123456789012.us-east-1.rds.amazonaws.com",
  username = "Bill",
  db-password = "ThisIsMySuperSecretString12356!"
  db-username   = "mydb",
  port     = 3306
  password = "my_password",
  api_key  = "my_api_key"
  # Add more secret key-value pairs as needed
}

tags = {
  Environment     = "dev-EKS-cluster"
  Department      = "Marketing"
  Owner-Email     = "mayorfaj.io@gmail.com"
  Managed-By      = "Terraform"
  Billing-Account = "953523290929"
}

kms_key_id = null

recovery_window_in_days = 0