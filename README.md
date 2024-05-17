

## Descrição do Projeto

<p style="text-align: left">Este projeto foi desenvolvido como teste tecnico da mks desenvolvimento de sistemas, se tratando de uma API
RestFull de filmes, com controle de usuários, banco de dados postgres e redis como seu cache</p>

<p style="text-align: left">Esta foi a primeira API que utilizei o docker para desenvolvimento, sendo esta uma tecnologia na qual não possuo tanto conhecimento, mas me esforçei para criar um bom docker-compose para ambiente de produção, como solicitado nas diretrizes do desafio</p>

## Tecnologias do Projeto

<div style="display: flex; margin: 2em; gap: 1em;" >
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/typescript/typescript-original.svg" height="45" width="45"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/redis/redis-original.svg" height="45" width="45" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/nestjs/nestjs-original.svg" height="45" width="45" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/postgresql/postgresql-original.svg" height="45" width="45"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/docker/docker-original.svg" height="45" width="45" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/swagger/swagger-original.svg" height="45" width="45" />               
</div>

## Rodando o Docker Compose

```bash
# rodando o container em modo de desenvolvimento (redis e postgresql)
docker-compose up

# rodando o container em modo de desenvolvimento com o detached aplicado (redis e postgresql)
docker-compose up -d

# rodando o container em modo de produção (imagem da api)
docker-compose --profile production up -d

# stoping the container
docker-compose down
```
<p style="text-align: left">Em modo de desenvolvimento, você ainda precisa instalar as depêndencias do projeto antes de roda-lo, subindo como produção, essa nescessidade é cortada</p>

```bash

# Instalando os pacotes e bibliotecas
npm install

# Subindo o servidor
npm run start:dev

```

<p style="text-align: left">Desta forma, você deve continuar podendo desenvolver a API sem maiores problemas, apenas lembre de rodar as migrations e criar a database se for usar uma diferente!</p>

## Acessando a Documentação

- Documentação - [Aqui](http://34.123.109.37:3000/api)

## Considerações

<p style="text-align: left">Não achei nescessário a existências de testes e2e e unitários devido a simplicidade da aplicação, o desenvolvimento desses testes não me daria um ganho de tempo se testados na mão, visto que cada rota era produzida unicamente e logo em seguida, testada, por isso não os inclui no repositorio.</p>