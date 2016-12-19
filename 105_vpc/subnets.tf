resource "aws_subnet" "subnet_priv1" {
  vpc_id                  = "${aws_vpc.vpc_pub_priv.id}"
  cidr_block              = "${var.subnet_priv1_cidr}"
  map_public_ip_on_launch = false 

  tags {
	"Name" = "${lookup(var.tags,"subnet_priv1_name")}"

  }
}

resource "aws_subnet" "subnet_pub1" {
  vpc_id                  = "${aws_vpc.vpc_pub_priv.id}"
  availability_zone       = "${var.subnet_pub1_az}"
  cidr_block              = "${var.subnet_pub1_cidr}"
  map_public_ip_on_launch = true


  tags {
	"Name" = "${lookup(var.tags,"subnet_pub1_name")}"

  }
}

