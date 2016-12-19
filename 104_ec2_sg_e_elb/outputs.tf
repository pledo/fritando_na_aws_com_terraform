output "instance_id" {
  value = "${aws_instance.ec2_sg_elb.id}"
}

output "private_dns" {
  value = "${aws_instance.ec2_sg_elb.private_dns}"
}

output "private_id" {
  value = "${aws_instance.ec2_sg_elb.private_id}"
}

output "subnet_id" {
  value = "${aws_instance.ec2_sg_elb.subnet_id}"
}
