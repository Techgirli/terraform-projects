terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {
}

resource "local_file" "tf_example1" {
  filename = "${path.module}/${var.filename-1}.demo"
  content  = "Hey, this is the terraform course!. Miracle is a good learner."
  count    = var.count_num
}

resource "local_file" "tf_example2" {
  filename = "${path.module}/${var.filename-2}.txt"
  content  = "Hey, this is the terraform course!. Miracle is a good learner."
}

resource "local_file" "tf_example3" {
  filename = "${path.module}/${var.filename-3}.md"
  content  = "Hey, this is the terraform course!. Miracle is a good learner."
}

locals {
  base_path = "${path.module}/files"
}
resource "local_file" "tf_example4" {
  filename = "${local.base_path}/tf_example.md"
  content  = "Hey, this is the terraform course!. Miracle is a good learner."
}

locals {
  environment = "dev" # dev, staging, prod
  upper_case  = upper(environment)
  base_path   = "${path.module}/configs/${local.upper_case}"
}

resource "local_file" "service_configs" {
  filename = "${local.base_path}/server.sh"
  content  = <<EOT
  environment = ${local.environment}
  port=3000
  EOT
}
