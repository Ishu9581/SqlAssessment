-- Exercise 3 (10 marks):

-- Write a SQL query to find those customers with a grade less than 100. It should return cust_name, customer city, grade, salesman, and salesman city. The result should be ordered by ascending customer_id.
create table customer(customer_id int primary key not null, cust_name varchar(30), city varchar(20), grade int, salesman_id int);
insert into customer values(3002,'Nick Rimando','New York',100,5001),
(3007,'Brad Davis','New York',200,5001),
(3005,'Graham Zusi','California',200,5002),
(3008,'Julian Green','London',300,5002),
(3004,'Fabian Johnson','Paris',300,5006),
(3009,'Geoff Cameron','Berlin',100,5003),
(3003,'Jozy Altidor','Moscow',200,5007),
(3001,'Brad Guzan','London' ,null,5005);

select * from customer;
create table salesman(salesman_id int primary key,name varchar(20),city varchar(20),commission float);
insert into salesman values(5001,"james Hoog","Newyork",0.15),(5002,"Nail Knite","Paris",0.13),(5005,"Pit Alex","London",0.11),(5006,"MC layon","Paris",0.14),(5007,"Paul adam","Rome",0.13),(5003,"Lauson Hen","San jose",0.12);
select * from salesman;

select c.cust_name,c.city,c.grade,s.name,s.city from customer c, salesman s where c.grade<100 and c.salesman_id=s.salesman_id order by c.customer_id;
