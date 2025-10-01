# Rocketsales E-Commerce Database Project

## Project Overview
This repository contains the complete SQL implementation for Rocketsales, an e-commerce platform specializing in PCs and related electronics. The project includes a fully normalized relational database schema, realistic sample data, advanced analytical SQL queries, views, and query optimization strategies designed to support scalable e-commerce operations and business intelligence.

## Features
- Relational schema with 12 entities and 4 many-to-many relationships resolved by junction tables
- Implemented in MySQL with primary/foreign key constraints and data integrity checks
- Realistic sample data simulating diverse operational scenarios
- Advanced SQL queries demonstrating multi-table joins, aggregations, window functions, and subqueries
- Business intelligence views summarizing sales by region and monthly trends
- Query performance optimization through indexing and query refactoring

## Getting Started

### Prerequisites
- MySQL 8.0 or higher installed
- SQL client or command-line access to execute scripts

### Installation and Usage
1. Clone this repository:
   ```bash
   git clone https://github.com/adithyaroy99/Rocketsales-E-Commerce-Database-Project.git
   ```
2. Create a new MySQL database (e.g., rocketsales):
   ```sql
   CREATE DATABASE rocketsales;
   USE rocketsales;
   ```
3. Execute the SQL scripts in the following order:
   - Schema creation scripts (tables, constraints, indexes)
   - Sample data insertion scripts
   - Views and advanced queries scripts
4. Run queries or integrate with applications for further development and analytics.

## Repository Structure
```
/schema         # SQL files defining tables and relationships
/data           # Sample data insert scripts
/queries        # Advanced analytical queries and views
/optimization   # Indexes and performance tuning scripts
```

## Contributing
Contributions are welcome. Please submit pull requests with descriptive notes and ensure all SQL scripts maintain integrity and compatibility with MySQL 8.0.

## Contact
For questions or collaboration, please contact here - [Aadhithya Roy](https://www.linkedin.com/in/aadhithya-roy/)
