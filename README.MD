<div align="center">

<img src="https://img.shields.io/badge/Databricks-FF3621?style=for-the-badge&logo=databricks&logoColor=white" alt="Databricks" />
<img src="https://img.shields.io/badge/Delta%20Lake-003366?style=for-the-badge" alt="Delta Lake" />
<img src="https://img.shields.io/badge/SQL-336791?style=for-the-badge&logo=postgresql&logoColor=white" alt="SQL" />
<img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github" alt="GitHub" />

<br/>

# 🌦️ Weather Data Management (DDL & DML in Databricks)

### Implementation of SQL-based data operations using Delta Lake

[![Platform](https://img.shields.io/badge/Platform-Databricks-orange)](#)
[![Storage](https://img.shields.io/badge/Storage-DeltaLake-blue)](#)
[![Language](https://img.shields.io/badge/Language-SQL-green)](#)
[![Status](https://img.shields.io/badge/Status-Completed-success)](#)

<br/>

</div>

---

## 🔍 Overview

This project demonstrates the implementation of **DDL (Data Definition Language)** and **DML (Data Manipulation Language)** operations using **Databricks SQL** on a weather dataset. 

The workflow includes data ingestion, schema creation, transformation, and structured query execution using Delta Lake.

---

## 🏗️ Workflow

`CSV Upload` → `Table Creation` → `Schema Modification` → `Data Transformation` → `Analysis`

---

## 📊 Dataset

* **Dataset Name:** `weather_data.csv`
* **Type:** Structured CSV
* **Domain:** Meteorology / Weather Data

### Attributes:

| Column | Description |
| :--- | :--- |
| **district** | District name |
| **mandal** | Region / Sub-district |
| **weather_date** | Date of observation |
| **rain** | Rainfall (mm) |
| **min_temp** | Minimum temperature (°C) |
| **max_temp** | Maximum temperature (°C) |
| **min_humidity** | Minimum humidity (%) |
| **max_humidity** | Maximum humidity (%) |
| **min_wind_speed** | Minimum wind speed (km/h) |
| **max_wind_speed** | Maximum wind speed (km/h) |

---

## 🛠️ Tech Stack

* **Databricks**: Unified analytics platform.
* **Delta Lake**: Storage layer that brings ACID transactions to Apache Spark.
* **SQL**: Standardized language for Databricks SQL Warehouses.
* **GitHub**: Version control and documentation.

---

## 🧱 DDL Operations

* `CREATE DATABASE` / `CREATE TABLE`
* `DESCRIBE TABLE` (Metadata inspection)
* `ALTER TABLE` (Adding `avg_temp` and `rain_category`)
* `CREATE TABLE ... AS SELECT` (Staging tables)

---

## 🔄 DML Operations

* `SELECT`: Data retrieval.
* `INSERT`: Adding new weather records.
* `UPDATE`: Calculating averages and categories.
* `DELETE`: Data cleaning and removing outliers.
* `MERGE`: Performing Upserts (Update + Insert).
* `INSERT OVERWRITE`: Atomic replacement of data partitions.

---

## 📁 Project Structure

```
Weather_forcast_usecase/
├── DDL/                           # Data Definition Language scripts
│   ├── 01_use_db.sql              # Database context setup
│   ├── 02_describe.sql            # Table structure inspection
│   ├── 03_add_avg_temp.sql        # Schema evolution: avg_temp
│   ├── 04_add_rain_category.sql   # Schema evolution: rain_category
│   └── 05_create_stage.sql        # Staging table definition
├── DML/                           # Data Manipulation Language scripts
│   ├── 01_select.sql              # Exploratory queries
│   ├── 02_update_avg.sql          # Logic for temperature averaging
│   ├── 03_update_rain_category.sql# Categorization logic
│   ├── 04_insert.sql              # Manual record entry
│   ├── 05_delete.sql              # Data scrubbing
│   ├── 06_insert_stage.sql        # Loading staging data
│   ├── 07_merge.sql               # Delta Lake Merge (Upsert)
│   └── 08_insert_overwrite.sql    # Atomic table overwrites
├── Report/                        # Project documentation
│   └── Weather_Usecase_Report.pdf
├── data/                          # Dataset folder
│   └── weather_data.csv
└── README.md                      # Project documentation
```
---
✨ Key Features
ACID Transactions: Leveraging Delta Lake for reliable DML operations.

Schema Evolution: Using ALTER TABLE to adapt to changing data requirements.

Upsert Capability: Efficiently syncing staging data with production tables using MERGE.

Clean Organization: Modular SQL scripts for better maintainability.
---
🎓 Learning Outcomes
Mastery of Databricks SQL syntax.

Understanding the lifecycle of data in a Lakehouse architecture.

Implementing Data Quality checks using SQL-based transformations.

Organizing cloud-based workflows into version-controlled repositories.
---
⚠️ Challenges
Special Characters: Managing column names with spaces or symbols using backticks (`).

Schema Enforcement: Resolving mismatches during the MERGE process.

Data Volume: Handling large-scale updates efficiently in a distributed environment.
---
## 👥 Team Members

| Name | USN |
| :--- | :--- |
| **CH S K CHAITANYA** | `1EP23CS034` |
| **SEETHAKA RAKSHITHA** | `1EP23CS147` |

<div align="center">

⭐ If you found this project useful, consider starring the repository!

</div>
