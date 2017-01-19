#### Indo para as fundações, criando nossa VPC com subnets 

Bem, começamos bem na manha, subindo uma maquiNiNHa de boa, fomos incrementando a entrega inserindo novos atributos na instancia, criando security groups, loadbalancer e linkando tudo isso em tempo de execução. Agora iremos fechar criando nossa VPC, duas subnets, uma privada e outra publica, configurando as rotas e todos os elementos para termos um ambiente seguro e funcional e seguro.

Para isso teremos que criar alguns arquivos referentes aos componentes de rede, segue a minha lista:

- vpc_pub_priv.tf: Arquivo que cria a VPC, nele definimos o cidr e outros atributos
- subnets.tf: Aqui criaremos as duas subnets, uma privada e outra publica
- internet_gateway.tf: Para a subnet publica precisamos ter um internet gateway, 
- nat_gateway.tf: Aqui temos o gateway por onde os recursos da subnet privada ira conseguir acessar a internet. Veja que temos a entrada: **depends_on = ["aws_eip.eip_for_nat_gw"]** isso significa que para criarmos o nat_gateway é necessário que um eip seja criado antes.

- eip.tf: Nesse arquivo criamos um eip, que será associado ao nat_gateway da subnetprivada.
- route_tables.tf: Agora precisamos criar rotas de rede para tudo que estiver na subnet publica saia pelo internet gateway e o que estiver na subnet privada saia pelo nat gateway.

**Pronto, agora já temos nossa vpc com subnets publica e privada, estamos prontos para ter um ambiente  com um nivel razoavel de segurança, o que for backend, banco de dados fica na subnet privada e o que for front end e tiver que ficar exposto colocamos na subnet publica.**

Para testarmos o ambiente iremos subir duas maquinas, uma na subnete privada e a outra na publica. Para isso vamos criar dois security groups e um Elastic Load Balance

- security_group.tf: Aqui criamos  um sg para o elb e outro para as maquinas

- load_balancer.tf: Nesse arquivo criamos o nosso elb que irá ter a maquina da subnet publica associado 

- ec2s_pub_priv.tf: Aqui criamos as 2 maquinas para validarmos nosso ambiente

**Obs: temos o que melhorar, tentar pegar mais informações de forma dinamica e menos do arquivo de variaveis, vamos deixar isso para depois ok?**

