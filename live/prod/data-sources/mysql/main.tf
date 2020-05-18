terraform {
  required_version = ">= 0.12, < 0.13"

  backend "s3" {
    key            = "prod/data-stores/mysql/terraform.tfstate"
  }
}

provider "aws" {
  region = "sa-east-1"
}

module "datastore_mysql_cluster" {
  source = "../../../../modules/data-stores/mysql"

  db_prefix = "db-prod"
  db_size   = 10
  db_name   = "webserver_cluster"
}
output "datastore_address" {
  value = "${module.datastore_mysql_cluster.address}"
  description = "Endereço DNS do host para conexão ao banco"
}

output "datastore_port" {
  value = "${module.datastore_mysql_cluster.port}"
  description = "Porta em que o banco de dados está aguardando as conexões"
}
