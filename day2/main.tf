variable "filename" {
  type = string
}

variable "message" {
  type = string
}

resource "local_file" "file" {
  filename = var.filename
  content  = var.message
}
