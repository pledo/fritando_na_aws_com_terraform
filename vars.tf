variable "access_key" {
  default = ""
}

variable "secret_key" {
  default = ""
}

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
  default = ""
}

variable "monitoring" {
  default = "false"
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

variable "vpc_id" {
  default = ""
}

variable "sg_name" {
  default = ""
}

variable "sg_description" {
  default = "sg para apresentacao do tf"
}

variable "sg_elb_name" {
  default = "devops-pledo-tf-elb"
}

#variable "access_key" { default = "" }

variable "elb_azs" {
  type    = "list"
  default = ["us-east-1a", "us-east-1b"]
}

variable "vpc_security_group_ids" {
  type    = "list"
  default = [""]
}

variable "tags" {
  default = {
    instance_name  = "devops_pledo_tf"
    sg_tf_name     = "devops_pledo_tf_sg"
    sg_tf_elb_name = "devops_pledo_tf_sg_elb"
    env_elb        = "devops_pledo_tf_elb_dev"
  }
}
