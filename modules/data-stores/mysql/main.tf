terraform {
  required_version = ">= 0.12, < 0.13"
}

resource "aws_db_instance" "mysql" {
  identifier_prefix   = var.db_prefix
  engine              = "mysql"
  allocated_storage   = var.db_size
  instance_class      = "db.t2.micro"
  name                = "${var.db_name}_database"
  username            = "admin"

  # Exemplo de senha plaintext, em prod usar um cofre de senhas seguro, passar por variável de ambiente ou chamada de API
  password            = "Senha_Plain_Text_Para_Testes"
  skip_final_snapshot = true

#data "aws_secretsmanager_secret_version" "db_password" {
#  secret_id = "mysql-master-password-stage"
}
