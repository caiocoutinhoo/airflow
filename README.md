# 🚀 Airflow Project

<div align="center">

![Airflow](https://img.shields.io/badge/Apache%20Airflow-017CEE?style=for-the-badge&logo=Apache%20Airflow&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/postgresql-4169e1?style=for-the-badge&logo=postgresql&logoColor=white)

</div>

---

## 📋 Sobre o Projeto

Este projeto configura um ambiente **Apache Airflow** completo usando Docker Compose, otimizado para desenvolvimento e produção. Integra perfeitamente com **DBT** para transformações de dados robustas.

## ⚡ Pré-requisitos

Antes de executar o projeto, certifique-se de ter instalado:

| Ferramenta | Versão Mínima | Link |
|------------|---------------|------|
| 🐳 **Docker** | 20.10+ | [Instalar Docker](https://docs.docker.com/get-docker/) |
| 🔧 **Docker Compose** | 2.0+ | [Instalar Docker Compose](https://docs.docker.com/compose/install/) |

---

## 🎯 Como Executar o Projeto

### 🔧 1. Inicializar o Airflow

Execute o comando de inicialização para configurar o banco de dados e criar o usuário administrador:

```bash
docker compose -f docker-compose.yml --env-file envs/dev.env up airflow-init
```

### 🚀 2. Subir os Serviços

Após a inicialização, execute o comando para subir todos os serviços em modo de desenvolvimento:

```bash
docker compose -f docker-compose.yml -f docker-compose.dev.yml --env-file envs/dev.env up -d
```

### 🌐 3. Acessar o Airflow

O Airflow Web UI estará disponível em: **[http://localhost:8080](http://localhost:8080)**

> 🔐 **Credenciais de acesso:**
> - **Usuário:** `admin`
> - **Senha:** `1234`

---

## 📁 Estrutura do Projeto

```
📦 airflow-project/
├── 🔄 dags/                    # DAGs do Airflow
├── 🏗️  dbt/                     # Modelos DBT
├── 🔌 plugins/                 # Plugins customizados do Airflow
├── 🐳 docker-compose.yml       # Configuração base do Docker Compose
├── ⚙️  docker-compose.dev.yml  # Configurações específicas para desenvolvimento
└── 🌍 envs/dev.env            # Variáveis de ambiente para desenvolvimento
```

---

## 🛑 Parar os Serviços

Para parar todos os serviços:

```bash
docker compose -f docker-compose.yml -f docker-compose.dev.yml --env-file envs/dev.env down
```

---

## 📦 Dependências Principais

| Pacote | Descrição | Status |
|--------|-----------|--------|
| 🌟 **astronomer-cosmos** | Integração Airflow + DBT | ✅ Instalado |
| 🐘 **dbt-postgres** | Adaptador DBT para PostgreSQL | ✅ Instalado |

---

<div align="center">

### 🎉 Projeto configurado e pronto para uso!

**Desenvolvido com ❤️ usando Apache