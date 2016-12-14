output "instance_id" {
  value = "${aws_instance.instancia_simples.id}"
}

output "private_dns" {
  value = "${aws_instance.instancia_simples.private_dns}"
}

output "private_id" {
  value = "${aws_instance.instancia_simples.private_id}"
}

output "subnet_id" {
  value = "${aws_instance.instancia_simples.subnet_id}"
}

