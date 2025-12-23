# 📊 Projeto dbt – Vendas de Carros na Noruega

Pipeline de dados desenvolvido com **dbt** para análise do mercado automotivo norueguês, com foco especial na **transição para veículos elétricos**.

O projeto transforma dados públicos em tabelas analíticas prontas para consumo em ferramentas de BI, seguindo boas práticas de **engenharia de dados e modelagem analítica**.

---

## 🛠️ Tecnologias Utilizadas

- dbt Core v1.10.15  
- PostgreSQL (local ou cloud)  
- Python 3.11+  
- Power BI (visualização)

---

## 📁 Estrutura do Projeto

Arquitetura baseada em boas práticas do dbt:

- staging → limpeza e padronização dos dados brutos  
- intermediate → transformações intermediárias  
- marts → tabelas analíticas finais (`mt_*`)

---

## 🚀 Instalação

Clone o repositório e acesse a pasta do projeto:

cd vendas_carros_noruega

Crie e ative o ambiente virtual:

python -m venv venv

Windows:
venv\Scripts\activate

Linux / Mac:
source venv/bin/activate

Instale as dependências:

pip install dbt-core dbt-postgres

---

## 🗄️ Configuração do Banco de Dados

Edite o arquivo ~/.dbt/profiles.yml:

vendas_carros_noruega:
  target: dev
  outputs:
    dev:
      type: postgres
      host: localhost
      user: seu_usuario
      pass: sua_senha
      port: 5432
      dbname: norway_cars
      schema: analytics

---

## ⚙️ Execução do Pipeline Completo

Carregar os CSVs do Kaggle:
dbt seed

Executar todos os modelos (staging → intermediate → marts):
dbt run

Rodar os testes de qualidade:
dbt test

Gerar e visualizar a documentação:
dbt docs generate
dbt docs serve

Acesse: http://localhost:8080

---

## 📈 O Que Este Projeto Faz

- Processa dados públicos do Kaggle sobre vendas de carros na Noruega  
- Cria tabelas analíticas prontas para BI  
- Calcula métricas estratégicas com foco no crescimento de veículos elétricos  

---

## 📊 Tabelas Analíticas Principais

- mt_sales_by_model_year_month  
  Vendas por modelo, ano e mês  

- mt_sales_by_make_year_month  
  Vendas por fabricante, ano e mês  

- mt_electric_growth  
  Crescimento anual de veículos elétricos  

---

## 📊 Dashboard no Power BI

Nota: O dashboard em Power BI não está versionado neste repositório por boas práticas de Git, pois arquivos .pbix são binários e grandes.

Para conectar o Power BI:

- Conecte ao banco PostgreSQL  
- Utilize o schema analytics  
- As tabelas mt_* estão otimizadas para análise  

---

## ✅ Boas Práticas Aplicadas

- Arquitetura em camadas (staging, intermediate, marts)  
- Testes de qualidade com dbt  
- Documentação automática com dbt Docs  
- Modelagem orientada a análise  

---

Projeto desenvolvido para fins de aprendizado, portfólio e demonstração de boas práticas em Engenharia de Dados.
