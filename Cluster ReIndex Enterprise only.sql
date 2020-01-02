ALTER INDEX ix_parts_id ON production REBUILD WITH (ONLINE = ON);
--- Online index operations can only be performed in Enterprise edition of SQL Server.
--- CAN'T BE DONE

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

ALTER INDEX ix ON production REBUILD WITH (ONLINE = ON);
--- Online index operations can only be performed in Enterprise edition of SQL Server.
