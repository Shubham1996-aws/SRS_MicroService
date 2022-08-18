variable "region" {
  default = "ap-south-1"

}

variable "ami" {
  default = "ami-076e3a557efe1aa9c"

}
variable "instance_type" {
  default = "t2.medium"

}
variable "security_group" {
  type    = list(number)
  default = ["22", "80", "8080"]

}
