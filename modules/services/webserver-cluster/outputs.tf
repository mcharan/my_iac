output "alb_dns_name" {
  value       = aws_lb.example.dns_name
  description = "Nome do host do load balancer"
}

output "asg_name" {
  value       = aws_autoscaling_group.example.name
  description = "O nome do Auto Scaling Group"
}

output "alb_security_group_id" {
  value       = aws_security_group.alb.id
  description = "O ID do Security Group anexado ao load balancer"
}
