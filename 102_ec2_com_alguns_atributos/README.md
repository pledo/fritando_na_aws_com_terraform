#### Definindo mais atributos da EC2

No passo anterior apenas definimos a ami e  o tipo da instancia, o restante dos atributos tipo a VPC e Subnet por exmeplo.
Agora iremos definir esses e outros atributos.

Lembrando que a estrutura continua com os tres arquivos:

```bash
$ ls -1
ec2_alguns_atributos.tf
outputs.tf
provider.tf
```
Veja abaixo, é bem tranquilis ;)

```bash
$ cat ec2_alguns_atributos.tf 
resource "aws_instance" "ec2_algumas_vars" {
  ami                         = "ami-40d28157"
  availability_zone           = "us-east-1a"
  ebs_optimized               = "false"
  disable_api_termination     = "false"
  instance_type               = "t2.micro"
  key_name                    = "devops_pledo"
  monitoring                  = "true"
  vpc_security_group_ids      = ["sg-e4feba9e"]
  subnet_id                   = "subnet-5cedb174"
  associate_public_ip_address = "true"
  source_dest_check           = "false"
  tags {
    "Name" = "devops_terraform"
  
  }

}
```
**Perceba que os valores da subnet, secutiry group e key ja devem ter sido criados anteriormente. Não esqueça desse detalhe. Vá no console e pegue essas informações**

Ainda teremos os arquivos de output e provider ok? 

Rode os comandos **terraform plan** e **terraform apply** e confira o resultado


