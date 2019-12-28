use Joel
-- DOWNLOADED CODE  https://edoceo.com/notabene/sql-us-states
create table states (
  scode char(2) PRIMARY KEY  not null,	-- ADD PRIMARY KEY when table is created
  sname varchar(64) not null );
select * from states
--		ALTER TABLE states ADD PRIMARY KEY (scode)		-- if you forget to add a primary key
--		drop table states
insert into states (scode,sname) values ('AL','Alabama');
insert into states (scode,sname) values ('AK','Alaska');
insert into states (scode,sname) values ('AS','American Samoa');
insert into states (scode,sname) values ('AZ','Arizona');
insert into states (scode,sname) values ('AR','Arkansas');
insert into states (scode,sname) values ('CA','California');
insert into states (scode,sname) values ('CO','Colorado');
insert into states (scode,sname) values ('CT','Connecticut');
insert into states (scode,sname) values ('DE','Delaware');
insert into states (scode,sname) values ('DC','District of Columbia');
insert into states (scode,sname) values ('FM','Federated States of Micronesia');
insert into states (scode,sname) values ('FL','Florida');
insert into states (scode,sname) values ('GA','Georgia');
insert into states (scode,sname) values ('GU','Guam');
insert into states (scode,sname) values ('HI','Hawaii');
insert into states (scode,sname) values ('ID','Idaho');
insert into states (scode,sname) values ('IL','Illinois');
insert into states (scode,sname) values ('IN','Indiana');
insert into states (scode,sname) values ('IA','Iowa');
insert into states (scode,sname) values ('KS','Kansas');
insert into states (scode,sname) values ('KY','Kentucky');
insert into states (scode,sname) values ('LA','Louisiana');
insert into states (scode,sname) values ('ME','Maine');
insert into states (scode,sname) values ('MH','Marshall Islands');
insert into states (scode,sname) values ('MD','Maryland');
insert into states (scode,sname) values ('MA','Massachusetts');
insert into states (scode,sname) values ('MI','Michigan');
insert into states (scode,sname) values ('MN','Minnesota');
insert into states (scode,sname) values ('MS','Mississippi');
insert into states (scode,sname) values ('MO','Missouri');
insert into states (scode,sname) values ('MT','Montana');
insert into states (scode,sname) values ('NE','Nebraska');
insert into states (scode,sname) values ('NV','Nevada');
insert into states (scode,sname) values ('NH','New Hampshire');
insert into states (scode,sname) values ('NJ','New Jersey');
insert into states (scode,sname) values ('NM','New Mexico');
insert into states (scode,sname) values ('NY','New York');
insert into states (scode,sname) values ('NC','North Carolina');
insert into states (scode,sname) values ('ND','North Dakota');
insert into states (scode,sname) values ('MP','Northern Mariana Islands');
insert into states (scode,sname) values ('OH','Ohio');
insert into states (scode,sname) values ('OK','Oklahoma');
insert into states (scode,sname) values ('OR','Oregon');
insert into states (scode,sname) values ('PW','Palau');
insert into states (scode,sname) values ('PA','Pennsylvania');
insert into states (scode,sname) values ('PR','Puerto Rico');
insert into states (scode,sname) values ('RI','Rhode Island');
insert into states (scode,sname) values ('SC','South Carolina');
insert into states (scode,sname) values ('SD','South Dakota');
insert into states (scode,sname) values ('TN','Tennessee');
insert into states (scode,sname) values ('TX','Texas');
insert into states (scode,sname) values ('UT','Utah');
insert into states (scode,sname) values ('VT','Vermont');
insert into states (scode,sname) values ('VI','Virgin Islands');
insert into states (scode,sname) values ('VA','Virginia');
insert into states (scode,sname) values ('WA','Washington');
insert into states (scode,sname) values ('WV','West Virginia');
insert into states (scode,sname) values ('WI','Wisconsin');
insert into states (scode,sname) values ('WY','Wyoming');