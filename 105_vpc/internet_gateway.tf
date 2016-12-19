resource "aws_internet_gateway" "igw_pub_priv" {
  vpc_id = "${aws_vpc.vpc_pub_priv.id}"
}

