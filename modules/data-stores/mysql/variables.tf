variable "db_size" {
  description = "Tamanho do banco de dados (Gb)"
  type        = number
}

variable "db_name" {
  description = "Nome do banco de dados"
  type        = string
}

variable "db_prefix" {
  description = "Prefixo identificador do banco de dados"
  type        = string
}
