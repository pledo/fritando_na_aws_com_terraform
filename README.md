#### Subindo o primeiro recurso

Aqui iremos criar uma EC2, apenas definiremos algumas informações como o tipo da instancia, uma tag e a ami.**

Criaremos 3 arquivos, todos terminam com a extensão **.tf**

* Provider: Onde iremos configurar o acesso a conta AWS

```bash
$ cat provider.tf
provider "aws" {
  region = "us-east-1"
    access_key = "********"
      secret_key = "*******"

}
```

* Output: Configuramos as saidas que queremos exibir
```
$ cat outputs.tf
output "instance_id" {
  value = "${aws_instance.instancia_simples.id}"

}

output "private_dns" {
  value = "${aws_instance.instancia_simples.private_dns}"

}

...
```

* primeira_instancia: Arquivo com as ações que queremos que o TerraForm realize

```
$ cat first_instance.tf 
resource "aws_instance" "instancia_simples" {
  ami           = "ami-40d28157"
  instance_type = "t2.micro"
  tags {
    "Name" = "devops_terraform_tags"
  
  }

}
```

Não esqueça de configurar suas chaves no arquivo provider.tf e a região correta. Com isso iremos rodar os comandos a seguir:

```bash
$ terraform plan
```

Dar uma conferida e depois roda o apply
```bash
$ terraform apply
```

Confere la no console da AWS a maquiNosa subindo....... Cê é looooooooKo

