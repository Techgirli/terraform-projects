terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "0.71.0"
    }
  }
}

provider "local" {
}

resource "local_file" "tf_example1" {
  filename = "${path.module}/${var.filename-1}"
  content  = "Hey, this is the terraform course!. Miracle is a good learner."
}

resource "local_file" "tf_example2" {
  filename = "${path.module}/${var.filename-2}"
  content  = "Hey, this is the terraform course!. Miracle is a good learner."
}

resource "local_file" "tf_example3" {
  filename = "${path.module}/${var.filename-3}"
  content  = "Hey, this is the terraform course!. Miracle is a good learner."
}
