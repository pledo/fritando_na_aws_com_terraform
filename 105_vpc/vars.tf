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
  default = "devops"
}

variable "monitoring" {
  default = "false"
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

variable "sg_description" {
  default = "sg para apresentacao do tf"
}

variable "vpc_pub_priv_cidr" { default = "10.1.0.0/16"  }
variable "main_route_table_cidr" { default = "0.0.0.0/0" }
variable "subnet_priv1_cidr" { default = "10.1.0.0/24" }
variable "subnet_pub1_az" { default = "us-east-1c" }
variable "subnet_pub2_az" { default = "us-east-1b" }
variable "subnet_priv1_az" { default = "us-east-1e" }
variable "subnet_priv2_az" { default = "us-east-1d" }
variable "subnet_pub1_cidr" { default = "10.1.2.0/24" }
variable "sg_name" { default = "devops_pledo_tf_sg"  }
variable "sg_elb_name" { default = "devops-pledo-tf-elb"  }


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
    vpc_pub_priv_name = "devops_pledo_tf_vpc"
    subnet_priv1_name = "devops_pledo_tf_subnet_priv"
    subnet_priv2_name = "devops_pledo_tf_subnet_priv"
    subnet_pub1_name = "devops_pledo_tf_subnet_pub1"
    route_table_pub1_name = "devops_pledo_tf_rt_pub1"
    route_table_priv1_name = "devops_pledo_tf_rt_priv1"
    route_table_priv2_name = "devops_pledo_tf_rt_priv2"

  }
}
