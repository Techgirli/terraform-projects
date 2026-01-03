variable "file1_content" {
  description = "This is the content of file1"
  type        = string
  default     = "Hello from file 1"
}
variable "file2_content" {
  description = "This is the content of file2"
  type        = string
  default     = "Hello from file 2"
}

variable "filename_1" {
  type        = string
  description = "This is the name of file 1"
  default     = "file1.txt"
}

variable "filename_2" {
  type        = string
  description = "This is the name of file 2"
  default     = "file2.txt"
}
