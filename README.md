# Retail-Sales-Data-Insights
Description:
An end-to-end data engineering project that extracts, transforms, and visualizes retail sales data from an on-premises SQL Server to Azure Data Lake Storage (ADLS). Utilizing Azure Data Factory for secure data ingestion, Azure Databricks for data cleaning and transformation, and Power BI for interactive visualization, this pipeline enables comprehensive analysis and informed decision-making.

Features:

- Data Ingestion: Securely extracts data from on-premises SQL Server using Azure Data Factory with a self-hosted integration runtime and key vault authentication.
- Data Cleaning & Transformation: Implements schema validation, column renaming, null handling, duplicate removal, outlier detection, and adds calculated columns in Azure Databricks.
- Data Storage: Stores transformed data in ADLS with partitioning by product category for optimized querying.
- Data Analysis: Utilizes Synapse dedicated SQL pools to create external tables and perform category-specific queries.
- Data Visualization: Develops interactive Power BI dashboards featuring KPIs, charts, maps, and slicers for dynamic data exploration.
- Security & Optimization: Ensures data security through key vault integration and optimizes data storage for performance.

Technologies Used:

- Azure Data Factory (ADF): Orchestrates data extraction and loading.
- Self-Hosted Integration Runtime (IR): Facilitates secure on-premises data connectivity.
- Azure Databricks: Performs data cleaning and transformation.
- Azure Data Lake Storage (ADLS): Serves as the centralized data repository.
- Azure Synapse Analytics: Enables advanced data analysis with dedicated SQL pools.
- Power BI: Provides robust data visualization and interactive reporting.
- SQL Server: Source of the on-premises retail sales data.
