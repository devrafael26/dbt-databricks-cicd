
![Pipeline ELT Databricks + DBT](https://github.com/devrafael26/dbt-databricks-cicd/blob/main/ELT%20Databricks%20DBT.png?raw=true)


# 🚀 Pipeline Lakehouse com Databricks, dbt e CI/CD

## 📖 Objetivo

Este projeto demonstra a construção de uma plataforma **Lakehouse** utilizando **Databricks, Delta Lake e dbt**, aplicando práticas de Engenharia de Dados encontradas em ambientes corporativos.

A solução contempla todo o fluxo de ingestão, transformação, qualidade dos dados, governança e integração contínua, desde a extração dos dados em um SQL Server até sua disponibilização para consumo analítico no Power BI.

---

# 🏗 Arquitetura da Solução

<p align="center">
  <img src="docs/arquitetura.png" width="900">
</p>

## Fluxo do Pipeline

```text
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
├── Raw
├── Staging
└── Mart
     │
     ▼
GitHub Actions (CI/CD)
     │
     ▼
Power BI
```

---

# 🛠 Stack Tecnológica

| Tecnologia | Finalidade |
|------------|------------|
| SQL Server | Banco de dados de origem |
| Python | Extração dos dados |
| Databricks | Plataforma Lakehouse |
| Delta Lake | Armazenamento transacional |
| dbt | Transformações, testes e documentação |
| GitHub Actions | Integração e Deploy Contínuos (CI/CD) |
| Power BI | Visualização dos dados |

---

# 🧠 Decisões de Arquitetura

Este projeto foi desenvolvido buscando reproduzir práticas utilizadas em ambientes reais de Engenharia de Dados.

### Por que Databricks?

- Plataforma unificada para processamento e análise de dados.
- Integração nativa com Delta Lake.
- Escalabilidade para workloads analíticos.

### Por que Delta Lake?

- Transações ACID.
- Evolução de Schema.
- Versionamento dos dados (Time Travel).
- Melhor desempenho para workloads analíticos.

### Por que dbt?

- Organização das transformações em camadas.
- Reutilização de código SQL.
- Testes automatizados.
- Documentação centralizada.
- Facilidade de manutenção.

### Por que GitHub Actions?

- Automação dos testes.
- Integração Contínua (CI).
- Padronização do processo de deploy.
- Redução de erros manuais.

---

# 🏛 Arquitetura de Dados

A solução foi organizada em múltiplas camadas para separar responsabilidades, facilitar manutenção e aumentar a rastreabilidade dos dados.

## Bronze

Camada responsável pelo armazenamento dos dados exatamente como foram recebidos da origem.

**Características**

- Dados brutos
- Sem regras de negócio
- Armazenamento em Delta Lake
- Base para todas as transformações posteriores

---

## Raw

Representa fielmente a estrutura da fonte de dados.

Nesta camada foram implementados testes para detectar alterações estruturais antes que elas sejam propagadas para as demais camadas.

**Validações implementadas**

- `assert_source_structure`
- Validação de tipos de dados
- Consistência do schema

---

## Staging

Responsável pela padronização e preparação dos dados.

Nesta camada são realizadas atividades como:

- Padronização de colunas
- Limpeza dos dados
- Normalização
- Preparação para consumo analítico

Também são aplicados testes de qualidade:

- `not_null`
- `non_negative`
- `unique`

---

## Mart

Camada destinada ao consumo analítico.

Nesta etapa são aplicadas as regras de negócio e disponibilizados modelos prontos para ferramentas de Business Intelligence.

---

# ✅ Qualidade dos Dados

Um dos principais objetivos deste projeto foi implementar mecanismos de validação capazes de detectar inconsistências antes que elas impactem as camadas analíticas.

Para isso foram utilizados testes automatizados com **dbt**.

### Testes implementados

- ✅ `assert_source_structure`
- ✅ `not_null`
- ✅ `accepted_values`
- ✅ `non_negative`
- ✅ `unique`
- ✅ Validação de relacionamentos

Esses testes permitem identificar automaticamente:

- Alterações no schema da origem.
- Valores inesperados.
- Dados inválidos.
- Quebras de integridade.
- Problemas antes da chegada às camadas analíticas.

---

# 🔄 CI/CD

O projeto utiliza **GitHub Actions** para automatizar a validação das alterações realizadas no dbt.

A pipeline executa automaticamente:

- Instalação das dependências.
- Execução dos testes.
- Validação dos modelos.
- Deploy do projeto.

Essa abordagem reduz erros manuais e aumenta a confiabilidade durante a evolução da solução.

---

# 📚 Governança de Dados

Além das transformações, o projeto também prioriza aspectos de governança.

Foram adotadas práticas como:

- Organização em camadas.
- Versionamento com GitHub.
- Documentação centralizada.
- Testes automatizados.
- Rastreabilidade das transformações.

---

# 📊 Consumo dos Dados

Após o processamento, os modelos da camada **Mart** são disponibilizados para consumo através do **Power BI**, permitindo a construção de dashboards e indicadores sobre uma base consistente, documentada e validada.

---

# 📂 Estrutura do Projeto

```text
.
├── notebooks
├── dbt_project
│   ├── models
│   │   ├── raw
│   │   ├── staging
│   │   └── mart
│   ├── tests
│   ├── macros
│   └── dbt_project.yml
├── .github
│   └── workflows
├── docs
│   └── arquitetura.png
└── README.md
```

---

# 🎯 Principais Competências Demonstradas

- Engenharia de Dados
- Arquitetura Lakehouse
- Arquitetura em Camadas (Bronze, Raw, Staging e Mart)
- Databricks
- Delta Lake
- dbt
- SQL
- Python
- ELT
- Data Quality
- Testes Automatizados
- Governança de Dados
- Integração Contínua (CI/CD)
- GitHub Actions
- Modelagem Analítica
- Power BI
