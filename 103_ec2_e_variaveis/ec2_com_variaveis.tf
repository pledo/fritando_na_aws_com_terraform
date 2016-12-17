resource "aws_instance" "ec2_algumas_vars" {
  ami                         = "${var.ami}"
  availability_zone           = "${var.availability_zone}"
  ebs_optimized               = "${var.ebs_optimized}"
  disable_api_termination     = "${var.disable_api_termination}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  monitoring                  = "${var.monitoring}"
  vpc_security_group_ids      = "${var.vpc_security_group_ids}"
  subnet_id                   = "${var.subnet_id}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  source_dest_check           = "${var.source_dest_check}"
  tags {
    "Name" = "${lookup(var.tags,"instance_name")}"
  }

}
