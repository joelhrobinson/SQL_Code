use Joel
--- http://www.sqlservertutorial.net/sql-server-basics/sql-server-vacation/
	

	create table vacationB ( stateID char (2) PRIMARY KEY,trip varchar (30))			-- drop table vacationB
	create table vacationJ ( stateID char (2) PRIMARY KEY,trip varchar (30))			-- drop table vacationJ
	create table vacationX ( stateID char (2) PRIMARY KEY,trip varchar (30))			-- drop table vacationX
	truncate table vacationB; truncate table vacationJ; truncate table vacationX;
--	fill with data
	insert into vacationB  (stateID, trip) values ('WA', 'B Visit Coast')
	insert into vacationB  (stateID, trip) values ('CA', 'B See Redwoods NP')
	insert into vacationB  (stateID, trip) values ('FL', 'B Visit Relatives')
	insert into vacationB  (stateID, trip) values ('OH', 'B Attend Wedding')
	insert into vacationB  (stateID, trip) values ('HI', 'B Visit Hawaii')

	insert into vacationJ  (stateID, trip) values ('WA', 'J Sail Puget Sound')
	insert into vacationJ  (stateID, trip) values ('CA', 'J See Redwoods NP')
	insert into vacationJ  (stateID, trip) values ('FL', 'J Deep Sea Fishing')
	insert into vacationJ  (stateID, trip) values ('OH', 'J Visit Miami')

	select * from vacationB; select * from vacationJ; select * from vacationX;

-- each merge has three possibilities
-- source table has unique rows to insert  >> insert into target
-- target table has unique rows not in source >> target will be deleted
-- source table has rows with same keys, but different values >> target will be overwritten

MERGE vacationx x USING vacationJ s
	ON (x.stateID = s.stateID) 
	WHEN MATCHED
		THEN UPDATE SET
			x.trip = s.trip, x.stateID = s.stateID
	WHEN NOT MATCHED BY TARGET						-- state is NOT in target
		THEN INSERT (stateID, trip)  values (s.stateID, s.trip)
	WHEN NOT MATCHED BY SOURCE						-- state is not in Source
		THEN DELETE;
		select * from vacationX;

		MERGE vacationx x USING vacationB s
	ON (x.stateID = s.stateID) 
	WHEN MATCHED
		THEN UPDATE SET
			x.trip = s.trip,
			x.stateID = s.stateID
		WHEN NOT MATCHED BY TARGET
		THEN INSERT (stateID, trip)  values (s.stateID, s.trip)
	WHEN NOT MATCHED BY SOURCE
		THEN DELETE;
		select * from vacationX;

select * from vacationB; select * from vacationJ; select * from vacationX;



