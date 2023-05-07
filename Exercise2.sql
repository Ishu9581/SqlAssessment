-- Exercise 2 :

create table ContactTable(id int primary key not null,Email varchar(20),fname varchar(10),lname varchar(10),company varchar(10),Active_flag int,opt_out int);
insert into ContactTable values(123,"a@a.com","Kian","Seth","ABC",1,1),
(133,"b@a.com","Neha","Seth","ABC",1,0),
(234,"c@c.com","Puru","Malik","CDF",0,0),
(342,"d@d.com","Sid","Maan","TEG",1,0);
select * from ContactTable;

-- QUESTIONS:
-- Select all columns from the contact table where the active flag is 1
select * from ContactTable where Active_flag = 1;

-- Deactivate contacts who are opted out 
update ContactTable set Active_flag=0 where Active_flag=1;

-- Delete all the contacts who have the company name as ‘ABC’
delete from ContactTable where company="ABC";

-- Insert a new row with id as 658, name as ‘mili’, email as ‘mili@gmail.com’, the company as ‘DGH’, active flag as 1, opt-out flag as 1
insert into ContactTable values(658,'mili@gmail.com','mili','Maan','DGH',1,1);

-- Pull out the unique values of the company column 

-- Update name “mili” to “niti”.
update ContactTable set fname='niti' where fname='mili';





