resource "aws_nat_gateway" "nat_gw_pub_priv" {
    allocation_id = "${aws_eip.eip_for_nat_gw.id}"
    subnet_id = "${aws_subnet.subnet_pub1.id}"
    depends_on = ["aws_eip.eip_for_nat_gw"]
}
