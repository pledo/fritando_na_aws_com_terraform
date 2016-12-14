resource "aws_instance" "ec2_alguns_atributos" {
  ami                         = "ami-40d28157"
  availability_zone           = "us-east-1a"
  ebs_optimized               = "false"
  disable_api_termination     = "false"
  instance_type               = "t2.micro"
  monitoring                  = "true"
  associate_public_ip_address = "true"
  source_dest_check           = "false"

# Considerando que na conta ja existe uma vpc, subnet 
#  e security group criada vc so precisa pegar os 
#  IDs desses recursos e defini aqui, segue exemplo

#  subnet_id                   = "subnet-ID"
#  vpc_security_group_ids      = ["sg-ID"]
#  key_name                    = "minha_chave"

  tags {
    "Name" = "devops_terraform"
  }

}
