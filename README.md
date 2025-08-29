
![Pipeline ELT Databricks + DBT](https://github.com/devrafael26/dbt-databricks-cicd/blob/main/ELT%20Databricks%20DBT.png?raw=true)


1️⃣ Extração — Conectei ao SQL Server via notebook Python, extraí a tabela e salvei os dados em arquivo CSV.

 2️⃣ Carga no Databricks — Fiz o upload do CSV, através do Data Ingestion, onde a plataforma reconhece automaticamente a estrutura, define tipos de dados e permite escolher o Catalog e Schema para criação da tabela.

 3️⃣ Armazenamento em Delta Lake — A tabela foi criada no formato Delta na camada Bronze do Delta Lake (dados brutos). A partir daí, utilizei o dbt para estruturar as camadas raw, staging e mart.

 4️⃣ Transformação com DBT — Organizei o projeto em camadas raw, staging e mart, garantindo um fluxo claro de transformação de dados:

 • Raw → Dados brutos refletindo fielmente a fonte.
 
 • Staging → Padronização e estruturação dos dados para uso interno.
 
 • Mart → Aplicação de regras de negócio e dados prontos para análise.

Na camada raw, utilizei testes de schema para garantir integridade e consistência com a estrutura esperada do SQL Server.

Na camada staging, padronizo os dados e aplico testes como por exemplo not_null e non_negative, para manter a qualidade.

Na camada mart, aplico regras de negócio e mais testes para assegurar que os resultados finais atendam às expectativas do negócio.

Aqui a parte em que achei mais legal! 😁 

Os testes automatizados como assert_source_structure, not_null, non_negative e accepted_values, além da documentação centralizada, facilitam a governança e manutenção ao longo de todo o fluxo.

Por exemplo: se algum tipo de dado mudar no SQL Server ou surgirem valores diferentes do esperado no schema, testes como assert_source_structure e accepted_values já acusam o problema antes mesmo de chegar ao Databricks.

Aí você pensa: “Meu Deus, quantos testes, Rafael!” E é isso mesmo — testes que não acabam mais! 😂
Brincadeiras à parte, isso garante algo muito importante na construção de ELT/ETL: a rastreabilidade, essencial para encontrar rapidamente a origem de qualquer problema.

Além disso, configurei GitHub Actions para automatizar testes e deploy do DBT, garantindo que cada alteração seja validada e integrada de forma contínua.

Por fim, conectei o Databricks ao Power BI para criar gráficos e dashboards, mostrando os dados transformados e prontos para análise.
