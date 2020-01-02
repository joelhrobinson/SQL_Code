use Joel
--Clustered
--Clustered indexes sort and store the data rows in the table or view based on their key values. 
--These are the columns included in the index definition. There can be only one clustered index per table, 
--because the data rows themselves can be stored in only one order.  
--The only time the data rows in a table are stored in sorted order is when the table contains a clustered index. 
--When a table has a clustered index, the table is called a clustered table. If a table has no clustered index, 
--its data rows are stored in an unordered structure called a heap.

---------------------------------------------------------------------------
-- CREATE CLUSTERED INDEX 
--Clustered index is used for easy retrieval of data from the database 
--It alters the way that the records are stored. 
--Database sorts out rows by the column which is set to be clustered index.
----------------------------------------------------------------------------

CREATE TABLE production(		---		drop table Production
    part_id   INT NOT NULL, 
    part_name VARCHAR(100) 	);

INSERT INTO     production(part_id, part_name) VALUES
    (1,'Frame'),      (2,'Head Tube'),    (3,'Handlebar Grip'),    (4,'Shock Absorber'),    (5,'Fork');
	select * from production

--- add a clustered index
CREATE CLUSTERED INDEX ix ON production (part_id); 
DROP INDEX ix on production

DROP TABLE production
----------------------------------------------------------------
--A nonclustered index does not alter the way it was stored 
--but creates a complete separate object within the table.
--It point back to the original table rows after searching. 
--------------------------------------------------------------
---CREATE NONCLUSTERED INDEX
CREATE NONCLUSTERED INDEX nix ON production (part_id); 
DROP INDEX nix on production