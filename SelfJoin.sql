--- self query



CREATE TABLE BicycleParts(		---		drop table BicycleParts
    part_id   INT ,
    part_name VARCHAR(100),
	price     INT);

INSERT INTO     BicycleParts (part_id, part_name,price) VALUES
    (1,'Frame',				6),      
	(2,'Head Tube',			212),   
	(3,'Handlebar Grip',	25), 
	(606,'pedals',			55),    
	(23,'tires',			65),    
	(13,'fender',			75),    
	(133,'fender',			133),    
	(44,'Shock Absorber',	44),    
	(5,'Fork',1);


	select * from BicycleParts

	select b.price as bike, p.price as sports from BicycleParts b, products p
		where p.price < b.price

