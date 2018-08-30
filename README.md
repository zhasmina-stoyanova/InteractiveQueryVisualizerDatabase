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

### Other scripts used:
1. dba_schema.sql - it contains the table lookup_view, which describes all the view objects that users have access to in the application. The authentication data for all users is stored in the user table, whereas all available roles are kept in the role table. To omit data redundancy all data is set to be in 3rd normal form. This led to creating additional tables, such as lookup_view_in_role and user_in_role. The first one represents the many-to-many relationship between the views and the roles that have access to them, while the second table has many-to-many relationship between users and roles, such as each user can have more than one role and vice versa. 
2. dba_data.sql - populating the data for the above schema

### Changes to the sample scripts:
1. The sakila-schema.sql contains procedures and functions that are not subject of research to the project, 
therefore executing thsese DDL statements will be omitted.
2. In the script sakila-schema.sql, the schema name sakila is replaced with zs30_sakila.
3. In the script sakila-data.sql, the schema name sakila is replaced with zs30_sakila.

### Setup the database:
1. Drop any previously created schema, that is named zs30_sakila or zs30_dba
2. Create a schema called zs30_sakila
3. From MySQL Workbench choose File -> Run SQL Scripts... and run the scripts sakila-schema.sql and sakila-data.sql,
   selecting zs30_sakila for Default Database Name and utf8 for Default Character Set
4. Create a schema called zs30_dba
5. From MySQL Workbench choose File -> Run SQL Scripts... and run the scripts dba_schema.sql and dba_data.sql,
   selecting zs30_dba for Default Database Name and utf8 for Default Character Set
   
 or
 
 1. Execute the scripts in the following order:
 - sakila-schema.sql
 - sakila-data.sql
 - dba_schema.sql
 - dba_data.sql
 
