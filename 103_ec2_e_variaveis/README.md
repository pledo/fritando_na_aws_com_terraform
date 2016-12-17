#### Removendo o hard code, elegantes variáveis

Bom, aqui adicionamos um arquivo, chamado ``vars.tf``, nele teremos
os nomes das variaveis e os valores.

Agora no arquivo ``ec2_com_variaveis.tf`` teremos os nomes dos atributos e as variaves com os valores desses atributos. 

Lembrando que a estrutura continua com os tres arquivos anteriores:

```bash
$ ls -1
ec2_com_variaveis.tf
outputs.tf
provider.tf
vars.tf
```
Segue o conteudo do arquivo com as configurações da instancia.

```bash
$ cat ec2_com_variaveis.tf 
resource "aws_instance" "ec2_algumas_vars" {
  ami                         = "${var.ami}"
  availability_zone           = "${var.availability_zone}"
  ebs_optimized               = "${var.ebs_optimized}"
  disable_api_termination     = "${var.disable_api_termination}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  monitoring                  = "${var.monitoring}"
  vpc_security_group_ids      = "${var.vpc_security_group_ids}"
  subnet_id                   = "${var.subnet_id}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  source_dest_check           = "${var.source_dest_check}"
  tags {
    "Name" = "${lookup(var.tags,"instance_name")}"
  
  }

}
```

**Estamos chegando la, proximo passo é criarmos outros recursos e 
interliga-los em tempo de execução, vamos lá**
