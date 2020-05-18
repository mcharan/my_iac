output "address" {
  value       = aws_db_instance.mysql.address 
  description = "Endereço para conexão ao banco de dados"
}

output "port" {
  value       = aws_db_instance.mysql.port
  description = "Porta em que o banco de dados está aguardando as conexões"
}
