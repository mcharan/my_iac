terraform {
  required_version = ">= 0.12, < 0.13"

  backend "s3" {
    bucket         = "charan-terraform-up-and-running-state"
    key            = "global/s3/terraform.tfstate"
    region         = "sa-east-1"
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}


provider "aws" {
  region = "sa-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "charan-terraform-up-and-running-state"

  # Previne a remoção acidental deste bucket S3
  lifecycle {
    prevent_destroy = true
  }

  # Habilita o versionamento, assim é possível rever o histórico completo dos arquivos de estado
  versioning {
    enabled = true
  }

  # Habilita criptografia do lado do servidor por padrão
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-up-and-running-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute { 
    name = "LockID"
    type = "S"
  }
}
