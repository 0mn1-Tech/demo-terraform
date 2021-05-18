
variable "base_bucket_name" {
  description = "nombre base del bucket"
  type        = string
  default     = "devops-reports"
}

/* 
locals: corresponde a valores compuestos, en este caso estamos haciendo un pattern name:
env-base_bucket_name
*/
locals {
  bucket_name = "${var.env}-${var.base_bucket_name}"
}

#Configuracion del S3 que será creado
resource "aws_s3_bucket" "demo" {
  bucket = local.bucket_name
  acl    = "private"
  tags = {
    Environment = var.env
    Owner       = var.owner
  }
}
# Imprimimos detalles del S3 creado
output "s3_details" {
  value       = aws_s3_bucket.demo
  description = "Detalles del S3 creado"
}
