resource "aws_security_group" "sg_maroto" {
    name = "${var.sg_name}"
    description= "${var.sg_description}"
    vpc_id= "${aws_vpc.vpc_pub_priv.id}"

    tags {
        "Name" = "${lookup(var.tags,"sg_tf_name")}"
    }

    ingress {
       from_port= 22
       to_port = 22
       protocol= 6 
       cidr_blocks = ["xxx.xxx.xxx.xxx/32"]
    }

    ingress {
       from_port= 80
       to_port = 80
       protocol= 6 
       cidr_blocks = ["0.0.0.0/0"]
    }


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
    vpc_id= "${aws_vpc.vpc_pub_priv.id}"

    tags {
        Name = "${lookup(var.tags,"sg_tf_elb_name")}"
    }

    ingress {
       from_port= 80
       to_port = 80
       protocol= 6
       cidr_blocks = ["xxx.xxx.xxx.xxx/32"]
    }

    egress {
       from_port= 0
       to_port = 0
       protocol= -1
       cidr_blocks = ["0.0.0.0/0"]
    }

}

