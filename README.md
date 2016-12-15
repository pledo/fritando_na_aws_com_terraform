#### Criando mas recursos, ELB e SGs

Agora além do arquivo que descrevemos como uma ec2 deve subir também criaremos um Load Balancer e dois security groups, um para a maquina e o outro para o ELB. 
Além de cria-los iremos interligá-los em tempo de execução, ou seja, depois que esses recursos terminarem de subir já estarão funcionando em conjunto, fino de mais hein?

```bash
$ cat security_group.tf
resource "aws_security_group" "sg_maroto" {
    name = "${var.sg_name}"
...
ingress {
       from_port= 22
       to_port = 22
       protocol= 6 
       cidr_blocks = ["189.10.20.190/32"]
    
}
...
egress {
       from_port= 0 
       to_port = 0
       protocol= -1
       cidr_blocks = ["0.0.0.0/0"]
    
}

}

resource "aws_security_group" "sg_elb" {
    name = "${var.sg_elb_name}"
    description= "${var.sg_description}"
...
```
Catzão no arquivo do ELB agora.

```bash
$ cat load_balancer.tf 
resource "aws_elb" "elb_maroto" {
  name                        = "${var.sg_elb_name}"
  subnets                     = ["${var.subnet_id}"]
  security_groups             = ["${aws_security_group.sg_elb.id}"]
  instances                   = ["${aws_instance.ec2_devops_pledo_tf.id}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400
...

resource "aws_lb_cookie_stickiness_policy" "elb-maroto-stickness" {
  name                     = "elb-maroto-stickness"
  load_balancer            = "${aws_elb.elb_maroto.id}"
  lb_port                  = 80
  cookie_expiration_period = 600

}

```
**Lembre-se de consultar os valores dos recursos que já devem ter sido criados, como por exemplo a vpc, subnet publica**
