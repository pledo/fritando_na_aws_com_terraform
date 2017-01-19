variable "ami" {
  default = "ami-40d28157"
}

variable "availability_zone" {
  default = "us-east-1a"
}

variable "ebs_optimized" {
  default = "false"
}

variable "disable_api_termination" {
  default = "false"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "devops_pledo"
}

variable "monitoring" {
  default = "true"
}

variable "subnet_id" {
  default = ""
}

variable "associate_public_ip_address" {
  default = "true"
}

variable "source_dest_check" {
  default = "false"
}

variable "vpc_security_group_ids" {
  type    = "list"
  default = [""]
}

variable "tags" {
  default = {
    instance_name = "devops_pledo_tf_vars"
  }
}
