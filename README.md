# Interactive Query Visualizer Database

### Database and tools used:
- MariaDB
- MySQL Workbench 6.3

### Sample database used:
- For this project the sample MySQL database Sakila will be used.
- It can be downloaded from https://dev.mysql.com/doc/index-other.html
- Executed scripts:
1. The sakila-schema.sql file contains the structure of the Sakila database including tables, views, stored procedures, and triggers.
2. The sakila-data.sql file contains the INSERT statements required to populate the structure created by the sakila-schema.sql file

### Changes to the sample scripts:
1. The sakila-schema.sql contains procedures and functions that are not subject of research to the project, 
therefore executing thsese DDL statements will be omitted.
2. In the script sakila-schema.sql, the schema name sakila is replaced with zs30_sakila.
3. In the script sakila-data.sql, the schema name sakila is replaced with zs30_sakila.

### Setup the database:
1. Create a schema called zs30_sakila
2. From MySQL Workbench choose File -> Run SQL Scripts... and run the scripts sakila-schema.sql and sakila-data.sql,
   selecting zs30_sakila for Default Database Name and utf8 for Default Character Set
