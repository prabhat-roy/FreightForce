remote_state {
  backend = "s3"
  config = {
    bucket         = "freightforce-tfstate-aws"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "freightforce-tfstate-locks"
  }
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" { region = "us-east-1" }
EOF
}
