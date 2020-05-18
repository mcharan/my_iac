variable "server_port" {
  description = "Porta para as requisições HTTP"
  type        = number
  default     = 8080
}

variable "security_group_name" {
  description = "Nome do security group"
  type        = string
  default     = "terraform-example-instance"
}

variable "cluster_name" {
  description = "Nome a ser utilizado em todos os recursos do cluster"
  type        = string
}

variable "db_remote_state_bucket" {
  description = "Nome do bucket S3 para o estado remoto do banco de dados"
  type        = string
}

variable "db_remote_state_key" {
  description = "O caminho para o estado remoto do banco de dados no S3"
  type        = string
}

variable "instance_type" {
  description = "O tipo das instâncias EC2 para rodar (ex: t2.micro)"
  type        = string
}

variable "min_size" {
  description = "Número mínimo de instâncias EC2 no ASG"
  type        = number
}

variable "max_size" {
  description = "Número máximos de instâncias EC2 no ASG"
  type        = number
}
