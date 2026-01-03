variable "file1_content" {
  description = "This is the content of file1.0"
  type        = string
  default     = "Hello from file 1.0"
}
variable "file2_content" {
  description = "This is the content of file2.0"
  type        = string
  default     = "Hello from file 2.0"
}

variable "filename_1" {
  type        = string
  description = "This is the name of file 1.0"
  default     = "file1.txt"
}

variable "filename_2" {
  type        = string
  description = "This is the name of file 2.0"
  default     = "file2.txt"
}
