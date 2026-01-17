
# AWS Retail Sales Analytics Pipeline

## 📌 Project Overview
This project demonstrates an end-to-end AWS-based data analytics pipeline designed to process, clean, and analyze retail sales data for business reporting.

## 🏗 Architecture
Raw CSV data is stored in Amazon S3, cataloged using AWS Glue, transformed using Amazon Athena, and loaded into Amazon RDS (MySQL) for analytics and BI consumption.

## 🔧 Technologies Used
- Amazon S3
- AWS Glue
- Amazon Athena
- Amazon RDS (MySQL)
- SQL



## 🪜 Data Pipeline Flow
1. Raw sales data ingested into S3 (Bronze layer)
2. Schema discovered using AWS Glue Crawler
3. Data cleaned and transformed using Athena (Silver layer)
4. Business metrics created using Athena SQL views (Gold layer)
5. Clean data loaded into Amazon RDS for reporting

## 📊 Key Analytics
- Total revenue
- Revenue by city
- Category-wise performance
- Daily sales trends

## 🚀 Key Learnings
- Implemented Bronze–Silver–Gold data architecture
- Handled real-world Athena limitations (date parsing, CSV export)
- Designed a BI-ready analytics database

## 📎 Notes
This project focuses on data engineering and analytics pipeline design. Visualization tools such as Power BI can be easily integrated on top of the RDS layer.
