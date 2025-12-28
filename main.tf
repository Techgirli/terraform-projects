resource "local_file" "tf_example1" {
  filename = "/home/techgirli/Downloads/terraform/01-basics/example-${count.index}.txt"
  content  = "Hey, this is the terraform course!. Miracle is a good learner."
  count    = 3
}

