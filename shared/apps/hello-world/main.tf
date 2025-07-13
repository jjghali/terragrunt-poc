variable "content" {}
variable "output_dir" {}
variable "owner" {
  default = ""
}
variable "env" {
  default = ""
}

resource "local_file" "file" {
  content  = "Hello by ${var.owner} in env ${var.env}"
  filename = "${var.output_dir}/hello.txt"

}
