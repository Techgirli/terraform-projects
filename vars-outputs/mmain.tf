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
}

resource "local_file" "tf_example2" {
  filename = "${path.module}/${var.filename-2}.txt"
  content  = "Hey, this is the terraform course!. Miracle is a good learner."
}

resource "local_file" "tf_example3" {
  filename = "${path.module}/${var.filename-3}.md"
  content  = "Hey, this is the terraform course!. Miracle is a good learner."
}
