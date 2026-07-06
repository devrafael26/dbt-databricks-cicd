
![Pipeline ELT Databricks + DBT](https://github.com/devrafael26/dbt-databricks-cicd/blob/main/ELT%20Databricks%20DBT.png?raw=true)


Objetivo

Este projeto demonstra a construção de uma plataforma Lakehouse utilizando Databricks, Delta Lake e dbt, aplicando práticas encontradas em ambientes corporativos de Engenharia de Dados.

O pipeline contempla todo o fluxo de ingestão, transformação, qualidade dos dados, governança e integração contínua, desde a extração dos dados em um SQL Server até sua disponibilização para análise no Power BI.

Arquitetura da Solução
<p align="center"> <img src="docs/arquitetura.png" width="900"> </p>

Fluxo do pipeline:

SQL Server
      │
      ▼
Python (Extração)
      │
      ▼
Databricks (Bronze / Delta Lake)
      │
      ▼
dbt
│
├── Raw
├── Staging
└── Mart
      │
      ▼
GitHub Actions (CI/CD)
      │
      ▼
Power BI
Stack utilizada
Tecnologia	Finalidade
SQL Server	Base de origem
Python	Extração dos dados
Databricks	Plataforma Lakehouse
Delta Lake	Armazenamento transacional
dbt	Transformações e Data Quality
GitHub Actions	CI/CD
Power BI	Visualização
Arquitetura de Dados

O projeto foi estruturado utilizando uma arquitetura em múltiplas camadas, buscando separar responsabilidades e facilitar manutenção, governança e rastreabilidade.

Bronze

Armazena os dados exatamente como foram recebidos da origem.

Características:

Dados brutos
Sem regras de negócio
Persistidos em Delta Lake
Base para todas as transformações posteriores
Raw

Reflete fielmente a estrutura da fonte de dados.

Nesta camada foram implementados testes para garantir que alterações estruturais na origem sejam detectadas automaticamente antes da propagação para as demais camadas.

Exemplos:

assert_source_structure
validação de tipos
consistência do schema
Staging

Responsável pela padronização dos dados.

Nesta etapa são realizadas transformações como:

padronização de nomes
normalização
limpeza
preparação para consumo

Também são aplicados testes de qualidade como:

not_null
non_negative
unique
Mart

Camada destinada ao consumo analítico.

Aqui são implementadas as regras de negócio que disponibilizam os dados prontos para ferramentas de BI.

Qualidade dos Dados

Um dos principais objetivos deste projeto foi simular práticas utilizadas em ambientes corporativos.

Foram implementados testes automatizados utilizando dbt para garantir a confiabilidade dos dados ao longo de toda a pipeline.

Entre eles:

✔ assert_source_structure
✔ not_null
✔ accepted_values
✔ non_negative
✔ unique
✔ relacionamentos entre tabelas

Esses testes permitem identificar alterações estruturais, inconsistências e valores inesperados antes que impactem as camadas analíticas.

CI/CD

O projeto utiliza GitHub Actions para automatizar a validação das alterações realizadas no dbt.

A pipeline executa automaticamente:

instalação das dependências
execução dos testes
validação dos modelos
deploy do projeto

Essa abordagem reduz erros manuais e garante maior confiabilidade durante a evolução da solução.

Governança

Além das transformações, o projeto também prioriza aspectos de governança.

Foram adotadas práticas como:

organização em camadas
documentação centralizada
testes automatizados
versionamento via GitHub
rastreabilidade das transformações
Consumo dos Dados

Após o processamento, os modelos da camada Mart são disponibilizados para consumo através do Power BI, permitindo a construção de dashboards e indicadores sobre uma base consistente e validada.

Estrutura do Projeto
.
├── notebooks
├── dbt_project
│   ├── models
│   │    ├── raw
│   │    ├── staging
│   │    └── mart
│   ├── tests
│   └── macros
├── github_actions
├── docs
└── README.md
Principais Competências Demonstradas
Engenharia de Dados
Arquitetura Lakehouse
ELT
Databricks
Delta Lake
dbt
SQL
Python
Data Quality
Testes Automatizados
Governança de Dados
CI/CD
GitHub Actions
Modelagem Analítica
