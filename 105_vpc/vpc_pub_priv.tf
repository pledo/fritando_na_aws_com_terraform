resource "aws_vpc" "vpc_pub_priv" {
  cidr_block           = "${var.vpc_pub_priv_cidr}"
  enable_dns_support   = "true"
  enable_dns_hostnames = "false"
  enable_classiclink   = "false"

  tags {
    "Name" = "${lookup(var.tags,"vpc_pub_priv_name")}"
  }
}
