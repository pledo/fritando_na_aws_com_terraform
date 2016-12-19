output "instance_id" {
  value = "${aws_instance.ec2_devops_pledo_tf.id}"
}

output "private_dns" {
  value = "${aws_instance.ec2_devops_pledo_tf.private_dns}"
}

output "private_id" {
  value = "${aws_instance.ec2_devops_pledo_tf.private_id}"
}

output "subnet_id" {
  value = "${aws_instance.ec2_devops_pledo_tf.subnet_id}"
}
