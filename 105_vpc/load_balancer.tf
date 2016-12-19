resource "aws_elb" "elb_maroto" {
  name                        = "${var.sg_elb_name}"
  subnets                     = ["${var.subnet_id}"]
  security_groups             = ["${aws_security_group.sg_elb.id}"]
  instances                   = ["${aws_instance.ec2_devops_pledo_tf.id}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  tags {
    "ambiente" = "${lookup(var.tags,"env_elb")}"
  }
}

resource "aws_lb_cookie_stickiness_policy" "elb-maroto-stickness" {
  name                     = "elb-maroto-stickness"
  load_balancer            = "${aws_elb.elb_maroto.id}"
  lb_port                  = 80
  cookie_expiration_period = 600
}
