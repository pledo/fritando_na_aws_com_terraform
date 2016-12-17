output "instance_id" {
  value = "${aws_instance.ec2_alguns_atributos.id}"
}

output "private_dns" {
  value = "${aws_instance.ec2_alguns_atributos.private_dns}"
}

output "private_id" {
  value = "${aws_instance.ec2_alguns_atributos.private_id}"
}

output "subnet_id" {
  value = "${aws_instance.ec2_alguns_atributos.subnet_id}"
}

