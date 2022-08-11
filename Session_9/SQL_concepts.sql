-- Questions

-- Write a SQL statement to wipe a table 'Temporary' from memory.
-- Write a SQL query to remove first 1000 records from table 'Temporary' based on 'id'.
-- Write a SQL statement to delete the table 'Temporary' while keeping its relations intact.


-- What is a UNIQUE constraint?

-- What is a Foreign Key?

-- What is a Join? List its different types.

-- Write a SQL statement to CROSS JOIN 'table_1' with 'table_2' and fetch 'col_1' from table_1 & 'col_2' from table_2 respectively. Do not use alias.
-- Write a SQL statement to perform SELF JOIN for 'Table_X' with alias 'Table_1' and 'Table_2', on columns 'Col_1' and 'Col_2' respectively.

-- What is a Query?

-- What is a Subquery? What are its types?

-- SELECT name, email, mob, address
-- FROM myDb.contacts
-- WHERE roll_no IN (
--  SELECT roll_no
--  FROM myDb.students
--  WHERE subject = 'Maths');


-- Write a SQL query to update the field "status" in table "applications" from 0 to 1.
-- Write a SQL query to select the field "app_id" in table "applications" where "app_id" less than 1000.
-- Write a SQL query to fetch the field "app_name" from "apps" where "apps.id" is equal to the above collection of "app_id"





-- solution -

-- UPDATE application SET status = 1 WHERE status = 0;

-- SELECT app_id FROM applications WHERE app_id < 1000;

-- SELECT app_name FROM apps WHERE app_id < 1000;


-- How to create empty tables with the same structure as another table?








 

