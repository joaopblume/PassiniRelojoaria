# Projeto de Gerenciamento em Oracle APEX - Passini Relojoaria

Este projeto serve para criar um site de gerenciamento em Oracle APEX, utilizando um container para o ORDS e outro para o banco, permitindo que o DBA ou desenvolvedor possa conectar no banco, além do próprio ORDS.

## Pré-requisitos

- Docker instalado
- Portainer instalado

## Passos para configurar o ambiente

### 1. Instalar Docker

Siga as instruções oficiais para instalar o Docker no seu sistema operacional: [Instalação do Docker](https://docs.docker.com/get-docker/)

### 2. # Baixar o ORDS (24.3)

[Baixar ORDS (24.3)](https://www.oracle.com/database/sqldeveloper/technologies/db-actions/download/)

#### Unzip

tar -xf ords-latest.zip


#### 1.2. Criar Dockerfile para ORDS

Crie um arquivo chamado `Dockerfile` no diretório onde você descompactou o ORDS com o seguinte conteúdo:

```Dockerfile
FROM openjdk:11-jre-slim

# Copiar o ORDS para o container
COPY ords /opt/ords

# Definir variáveis de ambiente
ENV ORDS_HOME /opt/ords
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

# Expor a porta 8080
EXPOSE 8080

# Comando para iniciar o ORDS
CMD ["sh", "-c", "$ORDS_HOME/bin/ords --config $ORDS_HOME/config serve"]
```

#### 1.3. Executar o container

Construir a imagem:
```sh
docker build -t ords:latest .
```

Executar o container ORDS
```sh
docker run -d -p 8080:8080 --name ords ords:latest
```

### 2. Configurar um XE com APEX

#### 2.1 Baixar a imagem Docker do Oracle XE

``` sh
docker pull container-registry.oracle.com/database/express:21.3.0-xe
```

#### 2.2 Criar e executar o container Oracle XE

``` sh
docker run -d -p 1521:1521 -p 5500:5500 --name oracle-xe -e ORACLE_PWD=Osr##99 container-registry.oracle.com/database/express:21.3.0-xe
```

#### 2.3 Configurar o Apex

Baixar o ORACLE APEX 24.1

https://download.oracle.com/otn_software/apex/apex_24.1.zip


``` sh
# Unzip apex
tar -xf apex_24.1.zip
```

Criar um Dockerfile para o APEX
``` sh
FROM container-registry.oracle.com/database/express:21.3.0-xe

# Copiar o APEX para o container
COPY apex_24.1 /opt/oracle/apex

# Expor as portas necessárias
EXPOSE 1521 5500

# Comando para iniciar o Oracle XE
CMD ["/bin/sh", "-c", "exec /opt/oracle/runOracle.sh"]
```

Acessar o container do xe
``` sh
docker exec -it oracle-xe bash
```

Acessar o banco de dados e instalar o APEX
``` sh
sqlplus sys/YourPassword@localhost:1521/XEPDB1 as sysdba

-- Dentro do SQLPLUS executar os scripts de configuracao do APEX

-- Criar uma tablespace para o APEX
CREATE TABLESPACE apex DATAFILE 'apex01.dbf' SIZE 100M REUSE AUTOEXTEND ON NEXT 1M MAXSIZE UNLIMITED;

-- Instalar o apex
@apexins.sql APEX APEX TEMP /i/
```


https://www.oracle.com/tools/downloads/apex-downloads/
