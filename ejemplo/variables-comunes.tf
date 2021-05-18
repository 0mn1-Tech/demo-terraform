#
variable "env" {
  description = "Ambiente en el que se crearán los recursos"
  type        = string
  default     = "demo"
}

variable "owner" {
  description = "Dueño de los recursos que serán creados"
  type        = string
  default     = "devops@omni.cr"
}
