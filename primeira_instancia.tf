resource "aws_instance" "instancia_simples" {
  ami           = "ami-40d28157"
  instance_type = "t2.micro"
  tags {
    "Name" = "devops_terraform_tags"
  }
}
