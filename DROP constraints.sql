--DROP  the constraints imposed when table is created

CREATE TABLE tbl1 (myname varchar(20),	CHECK (myname IS NOT NULL), myage int CHECK (myage > 10)) 


INSERT tbl1 VALUES('joel', 44)		-- bad format, defaults to 1900-01-01 00:00:00.000
INSERT tbl1 VALUES('Brenda',33)
----    INSERT tbl1 VALUES('Andrew',4)		-- fails initial constraint
SELECT tbl1.myage, * FROM tbl1 

alter table tbl1 add CHECK (myage < 100)
alter table tbl1 add CHECK (myage != 66)

-- DISPLAY ALL CONSTRAINTS
SELECT * FROM sys.objects  WHERE type_desc LIKE '%constraint'
SELECT * FROM sys.objects  WHERE name LIKE 'CK__tbl1__%'
SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS  WHERE TABLE_NAME='tbl1'

INSERT tbl1 VALUES('Noah',999)		-- fails new constraint
DELETE from tbl1 where myname = 'Noah'


-- TO DROP or NOCHECK A CONSTRAINT MUST GIVE ITs NAME
alter table tbl1 DROP CONSTRAINT CK__tbl1__myname__2CBDA3B5
alter table tbl1 DROP CONSTRAINT CK__tbl1__myage__336AA144
alter table tbl1 NOCHECK CONSTRAINT CK__tbl1__myname__382F5661

--- with constraints gone, try entering Noah age=999 again
ALTER TABLE tbl1 NOCHECK CONSTRAINT ALL		-- remove all constraints WORKS !!!! 
INSERT tbl1 VALUES('Noah',999)				-- passes after drop age < 100t

ALTER TABLE tbl1 NOCHECK CONSTRAINT ALL		-- remove all constraints WORKS !!!! 

INSERT tbl1 VALUES('baby Noah',4)				-- passes after drop ALL constraint

--			DROP TABLE tbl1		
