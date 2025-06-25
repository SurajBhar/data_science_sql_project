# Data Science Team Management (IBM Db2 Cloud)

This SQL-based project simulates how a data science organization manages its team members, projects, skills, datasets, and offices. It demonstrates relational modeling, query writing, data manipulation, and export operations — built entirely in **IBM Db2 on IBM Cloud (Lite Plan, 200MB limit)**.

## List of Advanced SQL Features Demonstrated

- `ALTER TABLE`, `TRUNCATE`
- Joins: `INNER`, `LEFT JOIN`, multi-table joins
- Aggregations: `COUNT`, `AVG`, `GROUP BY`, `HAVING`
- `CTE`s (Common Table Expressions)
- `RANK()` and `PARTITION BY` (Window functions)
- `UNION`, `ORDER BY`, `CASE`, `CHECK` constraints

---

## Project Structure

| Folder         | Contents                                |
|----------------|------------------------------------------|
| `sql/`         | All SQL scripts for creating, querying, updating, and exporting |
| `diagrams/`    | ERD diagrams or schema visualizations    |
| `assets/`      | Screenshots of results and export UI     |

---

## Tables Overview

- **TEAM_MEMBERS** — Names, emails, roles, skills, age, and office
- **PROJECTS** — DS projects, domains, leads
- **DATASETS** — Dataset inventory, sizes, and linkage
- **SKILLS / GENDERS / OFFICES** — Reference dimension tables

---

## How to Run

### Step 1: IBM Cloud Setup
- Create an **IBM Db2 instance (Lite Plan)** from [IBM Cloud](https://cloud.ibm.com/catalog/services/db2)
- Launch the **Db2 Console**
- Open the **Run SQL** tab

### Step 2: Load the Database
1. Upload and run `01_create_tables.sql`
2. Upload and run `02_insert_data.sql`
3. Run `02_01_view_tables.sql` to confirm inserts

### Step 3: Advanced Queries
- Use `03_advanced_queries.sql` to test basic SQL Commands
- Use `04_update_delete_operations.sql` + `04_01_view_changes.sql` to simulate data changes
- Use `05_advanced_queries.sql` to test JOINs, window functions, CTEs
- Use `05_01_view_advanced_queries.sql` to view the changes or results after executing advanced queries in script 5

### Step 4: Exporting Data
Run each file **one at a time**:
- `06_01_export_team_members.sql`
- `06_02_export_projects_summary.sql`
- `06_03_export_datasets_inventory.sql`
- `06_04_export_skills_distribution.sql`

> To Download: click **Export as CSV** → Save locally

---

## Screenshots

| Description           | Preview                        |
|-----------------------|--------------------------------|
| Team Member Data      | ![Preview](assets/screenshots/02_Insert_data/09.png) |
| Window Function     | ![Preview](assets/screenshots/05_advanced_queries/29_q5.png) |
| CTEs     | ![CTE](assets/screenshots/05_advanced_queries/28_q4.png)         |
| Export Button UI      | ![Export](assets/screenshots/06_export_data/34_06_04_copy.png) |

---

## Author

👤 **Suraj Bhardwaj**  
📧 [suraj.unisiegen@gmail.com](mailto:suraj.unisiegen@gmail.com)

---

## 📄 License

This project is open-sourced under the MIT License.

---

If you find this project helpful, feel free to ⭐️ star and 🍴 fork the repository to support and share it with others.
