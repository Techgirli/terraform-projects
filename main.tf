resource "local_file" "tf_example1" {
  filename = "/home/techgirli/Downloads/terraform/01-basics/example1.txt"
  content  = "Hey, this is the terraform course!. Miracle is a good learner."
}

resource "local_file" "tf_example2" {
  content  = " this is another example of local file resource in terraform 2"
  filename = "/home/techgirli/Downloads/terraform/01-basics/example2.txt"
}

resource "local_sensitive_file" "tf_sensitive_example" {
  filename = "/home/techgirli/Downloads/terraform/01-basics/sensitive_example.md"
  content  = "This is a sensitive file content. Handle with care!"
}
