variable "base_sqs_name" {
  description = "Nombre base del SQS que será creado"
  type        = string
  default     = "devops-report-topic"
}

/* 
locals: corresponde a valores compuestos, en este caso estamos haciendo un pattern name:
env-base_sqs_name
*/
locals {
  sqs_name = "${var.env}-${var.base_sqs_name}"
}

# Configuracion del SQS que será creado
resource "aws_sqs_queue" "demo" {
  name                      = local.sqs_name
  delay_seconds             = 90
  max_message_size          = 262144
  message_retention_seconds = 345600
  receive_wait_time_seconds = 10
  tags = {
    Environment = var.env
    Owner       = var.owner
  }
}

# Imprimimos detalles del S3 creado
output "sqs_details" {
  value       = aws_sqs_queue.demo
  description = "Detalles del SQS creado"
}

