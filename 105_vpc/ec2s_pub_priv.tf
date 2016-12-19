resource "aws_instance" "ec2_devops_pledo_tf" {
  ami                         = "${var.ami}"
  ebs_optimized               = "${var.ebs_optimized}"
  disable_api_termination     = "${var.disable_api_termination}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  monitoring                  = "${var.monitoring}"
  vpc_security_group_ids      = ["${aws_security_group.sg_maroto.id}"]
  subnet_id                   = "${aws_subnet.subnet_pub1.id}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  source_dest_check           = "${var.source_dest_check}"

  tags {
    "Name" = "${lookup(var.tags,"instance_name")}"
  }
}

resource "aws_instance" "ec2_devops_pledo_tf_priv" {
  ami                         = "${var.ami}"
  ebs_optimized               = "${var.ebs_optimized}"
  disable_api_termination     = "${var.disable_api_termination}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  monitoring                  = "${var.monitoring}"
  vpc_security_group_ids      = ["${aws_security_group.sg_maroto.id}"]
  subnet_id                   = "${aws_subnet.subnet_priv1.id}"
  associate_public_ip_address = "false"
  source_dest_check           = "${var.source_dest_check}"

  tags {
    "Name" = "${lookup(var.tags,"instance_name")}"
  }
}
