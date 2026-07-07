# MySQL-Workbench-Assessment
This repository is a MySQL Workbench Assessment which emphasizes on all SQL queries.

# 🛒 Week 3 Assessment - FlipCart Products Database

<div align="center">

![MySQL](https://img.shields.io/badge/MySQL-8.0-blue?style=for-the-badge&logo=mysql)
![SQL](https://img.shields.io/badge/SQL-Advanced-green?style=for-the-badge)
![Assessment](https://img.shields.io/badge/Status-Complete-success?style=for-the-badge)

**The Unlox Academy · DA/DS Track**

</div>

---

## 📋 Overview

This assessment demonstrates proficiency in SQL through a comprehensive analysis of a FlipCart products database. The project covers fundamental to advanced SQL concepts including data manipulation, aggregation, filtering, and conditional logic.

## 🗄️ Database Schema

### `products` Table

| Column | Type | Description |
|--------|------|-------------|
| `product_id` | INT | Primary Key |
| `product_name` | VARCHAR(80) | Product name |
| `category` | VARCHAR(30) | Product category |
| `brand` | VARCHAR(30) | Brand name |
| `price` | DECIMAL(10,2) | Product price |
| `stock_quantity` | INT | Available stock |
| `is_active` | BOOLEAN | Active status |
| `launched_date` | DATE | Launch date |
| `avg_rating` | DECIMAL(3,2) | Average rating |
| `discount_pct` | INT | Discount percentage |

### Categories 📦
- 📱 Electronics
- 👕 Apparel
- 🏠 Home
- 📚 Books
- 💄 Beauty
- ⚽ Sports

---

## 🎯 Assessment Sections

### 📝 Section A - Theory (8 Questions)
Multiple-choice questions covering:
- MySQL schema vs database concepts
- SQL command families (DDL, DML, DQL, DCL)
- Data type selection for monetary values
- Foreign key constraints
- WHERE vs HAVING clauses
- NULL handling in SQL
- COUNT() function behavior
- DROP vs TRUNCATE vs DELETE

### 🔍 Section B - Output Prediction (8 Questions)
Predicting query outputs for:
- Basic COUNT queries
- BETWEEN operator usage
- ORDER BY with LIMIT
- NULL value filtering
- MAX() aggregation
- GROUP BY with HAVING
- CASE WHEN expressions
- COALESCE function

### 💻 Section C - Applied SQL Queries (14 Questions)
Writing queries for:
- Basic SELECT statements
- WHERE clause filtering
- IN operator usage
- BETWEEN range queries
- LIKE pattern matching
- DISTINCT values
- Aggregate functions (COUNT, AVG, MAX, MIN, SUM)
- GROUP BY operations

### 🚀 Section D - Advanced SQL Queries (10 Questions)
Advanced concepts including:
- Complex GROUP BY with HAVING
- NULL handling with COALESCE
- CASE WHEN conditional logic
- Nested aggregations
- Multi-level categorization
- Sorting and limiting results

---

## 🚀 Getting Started

### Prerequisites
- MySQL 8.0 or higher
- MySQL Workbench or any MySQL client

### Setup

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd Weekly-Assessment-3
   ```

2. **Run the setup script**
   ```bash
   mysql -u your_username -p < flipcart_setup.sql
   ```

3. **Verify the database**
   ```sql
   USE flipcart;
   SELECT COUNT(*) FROM products;  -- Should return 30
   ```

4. **Run the assessment queries**
   ```bash
   mysql -u your_username -p flipcart < Week3_Assessment_G_Mohit.sql
   ```

---

## 📊 Key Learnings

✅ **SQL Fundamentals**: Mastered SELECT, WHERE, ORDER BY, LIMIT  
✅ **Data Filtering**: Proficient in IN, BETWEEN, LIKE operators  
✅ **Aggregation**: Comfortable with COUNT, AVG, MAX, MIN, SUM  
✅ **Grouping**: Understanding GROUP BY and HAVING clauses  
✅ **NULL Handling**: Using IS NULL, COALESCE functions  
✅ **Conditional Logic**: CASE WHEN expressions for data categorization  
✅ **Database Concepts**: Schema, constraints, data types  

---

## 🎓 Skills Demonstrated

- 🗃️ Database Design & Schema Understanding
- 🔎 Query Optimization & Performance Considerations
- 📈 Data Analysis & Reporting
- 🛡️ Data Integrity & Constraints
- 🧩 Complex Problem Solving with SQL

---

## 📁 Project Structure

```
Weekly-Assessment-3/
│
├── flipcart_setup.sql          # Database setup script
├── Week3_Assessment_G_Mohit.sql # Complete assessment answers
├── README.md                   # This file
└── Week3_Assessment (1).pdf   # Original assessment document
```

---

## 🤝 Contributing

This is an individual assessment project. For questions or discussions, please reach out through the repository issues.

---

## 📝 License

This project is created for educational purposes as part of The Unlox Academy's DA/DS Track assessment.

---

##  Acknowledgments

- **The Unlox Academy** for the comprehensive assessment
- **FlipCart** for the dataset inspiration
- **MySQL Community** for excellent documentation

