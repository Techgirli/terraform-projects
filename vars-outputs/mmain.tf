terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {
}

locals {
  environment = "dev" # dev, staging, prod
  upper_case  = upper(local.environment)
  base_path   = "${path.module}/configs/${local.upper_case}"
}
resource "local_file" "service_configs" {
  filename = "${local.base_path}/server.sh"
  content  = <<EOT
  environment = ${local.environment}
  port=3000
  EOT
}

resource "local_file" "service_configs_2" {
  filename = "${local.base_path}/server2.sh"
  content  = <<EOT
  environment = ${local.environment}
  port=3000
  EOT
}
resource "local_file" "service_configs_3" {
  filename = "${local.base_path}/server3.sh"
  content  = <<EOT
  environment = ${local.environment}
  port=3000
  EOT
}

# outputs
output "filename_1" {
  value = local_file.service_configs.filename
}
