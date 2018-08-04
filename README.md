# Trabalho Pós DEVOPS
Provisionamento e configuração para infraestrutura de aplicações web utilizando Terraform e Docker.

O projeto contém:
- 2 servidores apache para fornecer as páginas estáticas (portas 8080/8081)
- 2 servidores tomcat (porta 9090/9091)
- 1 servidor de bando de dados Postgresql (porta 5433)

## Ambiente e Configuração
- Windows 10 Pro ou Enterprise
- Instalar docker
- Instalar terraform
- Configurar o terraform nas variáveis de ambiente PATH

## Execução
- Acesse a pasta raiz do projeto
- Abra o bash e execute os seguintes comandos:
  - terraform init
  - terraform plan
  - terraform apply

## Grupo
- Gabriel Fontenele
- Lysandro Carioca
- Dyego Cruz
- Eli Samuel