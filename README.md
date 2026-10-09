# Retail Sales Reporting and Data Quality Analysis

## Project Overview

This project demonstrates how PostgreSQL can be used to analyze retail sales data and produce useful business reports.

The project uses a fictional retail business called Blue Nile Retail. It was developed as a SQL portfolio project to demonstrate relational database design, data extraction, reporting, and data quality validation.

## Business Objectives

The analysis addresses five business questions:

1. How much revenue did the business generate each month?
2. Which customers generated the highest sales?
3. Which products generated the most revenue and units sold?
4. Which product categories contributed the most revenue?
5. Are there missing values, duplicate records, or invalid quantities?

## Technologies

* PostgreSQL
* SQL joins and aggregations
* GROUP BY and ORDER BY
* Date-based analysis
* Window functions
* Data quality checks
* Revenue reconciliation

## Database Design

The database contains four related tables:

| Table       | Description                           |
| ----------- | ------------------------------------- |
| customers   | Customer names and cities             |
| products    | Product names and categories          |
| orders      | Customer orders and order dates       |
| order_items | Products, quantities, and unit prices |

The tables use primary keys and foreign keys to maintain referential integrity.

## Key Findings

The analysis of the fictional sample dataset produced the following results:

* Total sales revenue: 14,140 fictional monetary units.
* Highest-revenue category: Furniture.
* Highest-revenue product: Office Chair.
* Highest-volume product: Notebook.
* Data quality checks: zero issues detected in the supplied clean dataset.

These findings are based exclusively on the sample records included in this repository.

## Project Structure

* `sql/01_create_tables.sql`: Creates the database tables.
* `sql/02_sample_data.sql`: Inserts fictional sample records.
* `sql/03_sales_analysis.sql`: Contains four business reporting queries.
* `sql/04_data_quality_checks.sql`: Contains data validation queries.
* `screenshots/`: Contains screenshots of query results.
* `docs/database_design.md`: Describes the database relationships.

## How to Run

1. Install PostgreSQL.
2. Create an empty database named `retail_portfolio`.
3. Open the database in pgAdmin or another PostgreSQL client.
4. Execute the SQL files in numerical order.
5. Review the reporting results and data quality checks.

## Data Privacy

All records are fictional and were created for demonstration purposes. No confidential employer data, production database information, or real customer records are included.

## Purpose

This project demonstrates practical SQL skills for database reporting, business analysis, and data quality validation.

