variable "container_name" {
  description = "Name of container"
  type        = string
}

variable "container_port" {
  description = "Port mapping"
  type        = number
}

variable "image_name" {
  description = "Docker image"
  type        = string
  default     = "nginx:latest"
}
