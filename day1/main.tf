terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

variable "message" {
  description = "Message to write in file"
  type        = string
  default     = "Hello from Terraform"
}

resource "local_file" "hello" {
  filename = "hello.txt"
  content  = var.message
}

output "file_path" {
  value = local_file.hello.filename
}
