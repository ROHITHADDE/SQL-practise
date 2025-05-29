the above file contains sql practise commands like 

  1. DDL (Data Definition Language)
These commands are used to define and manage database schema and structure.

CREATE – Creates new tables, databases, views, etc.
Example: CREATE TABLE Students (ID INT, Name VARCHAR(50));

ALTER – Modifies an existing database object (like adding a column).
Example: ALTER TABLE Students ADD Age INT;

DROP – Deletes objects like tables or databases.
Example: DROP TABLE Students;

TRUNCATE – Removes all rows from a table without logging each row deletion.
Example: TRUNCATE TABLE Students;

RENAME – Renames a database object.
Example: RENAME TABLE Students TO Learners;




2. DML (Data Manipulation Language)
Used to manipulate data within tables.

SELECT – Retrieves data from the database.
Example: SELECT * FROM Students;

INSERT – Adds new data into a table.
Example: INSERT INTO Students (ID, Name) VALUES (1, 'Rohith');

UPDATE – Modifies existing data.
Example: UPDATE Students SET Name = 'Raj' WHERE ID = 1;

DELETE – Removes data from a table.
Example: DELETE FROM Students WHERE ID = 1;




3. DQL (Data Query Language)
Focuses specifically on querying data.

SELECT – Already mentioned under DML, but in some classifications, it is considered a separate category (DQL) due to its data retrieval purpose.


4.JOINS operations on tables 
          a. INNER JOIN
             Returns only the matching rows from both tables.
             Non-matching rows are excluded.

          b. LEFT JOIN (or LEFT OUTER JOIN)
              Returns all rows from the left table, and matching rows from the right table.
              If no match, NULLs are returned for right table columns.

           c. RIGHT JOIN (or RIGHT OUTER JOIN)
              Returns all rows from the right table, and matching rows from the left table.
              If no match, NULLs are returned for left table columns.

           d. FULL JOIN (or FULL OUTER JOIN)
               Returns all rows from both tables.
               NULLs are filled where there is no match in one of the tables.

           e. CROSS JOIN
               Returns the Cartesian product of two tables (every row in table1 joins with every row in table2).
               No condition is required.

            f. SELF JOIN
               A table is joined with itself using table aliases.
               Useful for hierarchical or comparative queries.
