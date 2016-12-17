output "instance_id" {
  value = "${aws_instance.ec2_algumas_vars.id}"
}

output "private_dns" {
  value = "${aws_instance.ec2_algumas_vars.private_dns}"
}

output "private_id" {
  value = "${aws_instance.ec2_algumas_vars.private_id}"
}

output "subnet_id" {
  value = "${aws_instance.ec2_algumas_vars.subnet_id}"
}
