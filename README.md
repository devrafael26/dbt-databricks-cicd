Modelo de Pipeline ELT na Databricks com DBT e Github Actions


1️⃣ Extração — Conectei ao SQL Server via notebook Python, extraí a tabela e salvei os dados em CSV localmente.

2️⃣ Carga no Databricks — Fiz o upload do CSV. A plataforma reconhece automaticamente a estrutura, define tipos de dados e permite escolher o Catalog e Schema para criação da tabela.

3️⃣ Armazenamento em Delta Lake — A tabela foi criada no formato Delta na camada Bronze (dados brutos).

4️⃣ Transformação com DBT — Organizei o projeto em camadas raw, staging e mart, garantindo um fluxo claro de transformação de dados:

• Raw → Dados brutos refletindo fielmente a fonte.

• Staging → Padronização e estruturação dos dados para uso interno.

• Mart → Aplicação de regras de negócio e dados prontos para análise.

Além disso, configurei GitHub Actions para automatizar testes e deploy do DBT, garantindo que cada alteração seja validada e integrada de forma contínua.
Na camada raw, utilizei testes de schema para garantir integridade e consistência com a estrutura esperada do SQL Server.
Na camada staging, padronizo os dados e aplico testes para manter a qualidade.

Na camada mart, aplico regras de negócio e mais testes para assegurar que os resultados finais atendam às expectativas do negócio.
Implementei testes automatizados como not_null, non_negative e accepted_values, além de documentação centralizada para facilitar governança e manutenção ao longo de todo o fluxo.
Por fim, conectei o Databricks ao Power BI para criar gráficos e dashboards, mostrando os dados transformados e prontos para análise.



