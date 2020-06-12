variable "product" {}
variable "environment" {}
variable "vpc_id" {}
variable "ec2_ami" {}
variable "ec2_type" {}
variable "key_name" {}
variable "subnet_id" {}
variable "ec2_count" {
  default =1
}
variable "ec2_delete_root_volume" {
 description = "root volume is boolen"
 default = "true"
}
variable "ec2_rootvol_size" {
  default = "10"
  description = "size of the root volume"
}
