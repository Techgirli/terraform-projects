resource "local_file" "tf_example1" {
  filename = "/home/techgirli/Downloads/terraform/01-basics/tf_example1.txt"
  content  = "Hey, this is the terraform course!. Miracle is a good learner."
}

resource "local_sensitive_file" "tf_example2" {
  content  = "This is sensitive information!"
  filename = "${path.module}/sensitive.txt"
}
