--The production.parts table does not have a primary key, therefore, 
--SQL Server stores its rows in an unordered structure called a heap.

--A clustered index organizes data using a special structured so-called B-tree (or balanced tree)
--which enables searches, inserts, updates and deletes in logarithmic amortized time.

--When you create a table with a primary key, SQL Server automatically 
--creates a corresponding clustered index based on columns included in the primary key.

-- object explorer >> right click on production table 
-- expand index >> find the Clustered index
-- can only have one clustered index
