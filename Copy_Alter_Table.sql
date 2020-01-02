
--The ROLLUP is an extension of the GROUP BY clause. 
--The ROLLUP option allows you to include extra rows that represent the subtotals, 
--which are commonly referred to as super-aggregate rows, along with the grand total row.
--By using the ROLLUP option, you can use a single query to generate multiple grouping sets.


use Joel

-- CREATE TABLE
select * INTO NameWeightAgeSex from tableM;			---		drop table NameWeightAgeSex
select * from NameWeightAgeSex

alter table NameWeightAgeSex add  Sex varchar(1)
alter table NameWeightAgeSex add  Salary decimal(6)
alter table NameWeightAgeSex add  Dept varchar(2)
alter table NameWeightAgeSex add  email varchar(50)
select * from NameWeightAgeSex

