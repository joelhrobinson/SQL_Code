-- Normalization
-- https://www.guru99.com/sql-interview-questions-answers.html
-- Normalization is the process of minimizing redundancy and dependency by organizing fields and table of a database

-- FIRST normalization	remove redundent columns
--		ex. address,  >> company, street, City, State, Zip
--		ex. full name >> Firstname, MI, lastname

-- SECOND create subtables and use primary keys to establish relationships
-- Each non-key attribute must be functionally dependent on the primary key 
--		ex. use indexed table of states, companies
--		ex. if customer address was in an order table, pull out and just use customerID

-- THIRD  remove columns not dependent on primary key
--		ex. 
-- FOURTH remove multi-valued dependencies





