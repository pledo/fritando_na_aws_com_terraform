resource "aws_route" "route_table_internet_access" {
 route_table_id         = "${aws_vpc.vpc_pub_priv.main_route_table_id}"
  destination_cidr_block = "${var.main_route_table_cidr}"
  gateway_id             = "${aws_internet_gateway.igw_pub_priv.id}"
}


/* Routing table for private subnet */
resource "aws_route_table" "route_priv1" {
  vpc_id = "${aws_vpc.vpc_pub_priv.id}"
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat_gw_pub_priv.id}" 
  }

  tags {
    "Name" = "${lookup(var.tags,"route_table_priv1_name")}"
  }

}

/* Routing table for public subnet */
resource "aws_route_table" "route_pub1" {
  vpc_id = "${aws_vpc.vpc_pub_priv.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw_pub_priv.id}" 
  }

  tags {
    "Name" = "${lookup(var.tags,"route_table_pub1_name")}"
  }

}


/* Associate the routing table to private subnet */
resource "aws_route_table_association" "association_route_private" {
  subnet_id = "${aws_subnet.subnet_priv1.id}"
  route_table_id = "${aws_route_table.route_priv1.id}"
}

/* Associate the routing table to public subnet */
resource "aws_route_table_association" "association_route_pub" {
  subnet_id = "${aws_subnet.subnet_pub1.id}"
  route_table_id = "${aws_route_table.route_pub1.id}"
}
