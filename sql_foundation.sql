create table Salesman(
                        Salesman_id number(5),
                        Name varchar2(20),
                        City varchar2(20),
                        Commision number(5,2),
                        constraint pk_salesman primary key (Salesman_id)
                    );
 insert into Salesman (Salesman_id, Name, City, Commision)  values(5001, 'James Hoog', 'New York', 0.15);
 insert into Salesman (Salesman_id, Name, City, Commision)  values(5002, 'JNail Knite', 'Paris', 0.13);
 insert into Salesman (Salesman_id, Name, City, Commision)  values(5005, 'Pit Alex', 'London', 0.11);
 insert into Salesman (Salesman_id, Name, City, Commision)  values(5006, 'Mc Lyon', 'Paris', 0.14);
 insert into Salesman (Salesman_id, Name, City, Commision)  values(5003, 'Lauson Hen', 'Sydney', 0.12);
 insert into Salesman (Salesman_id, Name, City, Commision)  values(5007, 'Paul Adam', 'Rome', 0.13);
 
 select Salesman_id, Name from Salesman;
 select Name from Salesman order by name asc;
 select Name, City from Salesman where City ='Paris';
 select * from salesman where City in ('Paris','Rome');
 select * from Salesman where (Name like 'A%' and Name like 'K%');
 select * from Salesman;   
 drop table Salesman;
 
 create table customers (
                            Customer_id number(5),
                            Cust_name varchar2(20),
                            City varchar2(20),
                            Grade number(5),    
                            Salesman_id number(5),
                            constraint pk_customer primary key (Customer_id)
                         );

insert into customers (Customer_id, Cust_name, City, Grade, Salesman_id)  values(3002, 'Nick Rimando', 'New York',	100, 5001);
insert into customers (Customer_id, Cust_name, City, Grade, Salesman_id)  values(3005, 'Graham Zusi', 'California',	200, 5002);
insert into customers (Customer_id, Cust_name, City, Salesman_id)  values(3001, 'Brad Guzan', 'London',	5005);
insert into customers (Customer_id, Cust_name, City, Grade, Salesman_id)  values(3004, 'Fabian Johns', 'Paris', 300, 5006);
insert into customers (Customer_id, Cust_name, City, Grade, Salesman_id)  values(3007, 'Brad Davis', 'New York', 200, 5001);
insert into customers (Customer_id, Cust_name, City, Grade, Salesman_id)  values(3009, 'Geoff Camero', 'Berlin', 100, 5003);
insert into customers (Customer_id, Cust_name, City, Grade, Salesman_id)  values(3008, 'Julian Green', 'London', 300, 5005);
insert into customers (Customer_id, Cust_name, City, Grade, Salesman_id)  values(3003, 'Jozy Altidon', 'Moscow',	200, 5007);

select * from customers where grade = 200;
select * from customers;
drop table customers;

create table products(
                      Pro_Id number(5),
                      Pro_Name varchar2(20),
                      Pro_Price number(5),
                      Pro_com number(5),
                      constraint pk_products primary key(Pro_Id)
                    );
                    
insert into products (Pro_Id, Pro_Name, Pro_Price, Pro_com) values(101, 'Mother Board', 3200, 15);
insert into products (Pro_Id, Pro_Name, Pro_Price, Pro_com) values(102, 'Key Board', 450, 16);
insert into products (Pro_Id, Pro_Name, Pro_Price, Pro_com) values(103, 'Zip drive', 250, 14);
insert into products (Pro_Id, Pro_Name, Pro_Price, Pro_com) values(104, 'Speaker', 550, 16);
insert into products (Pro_Id, Pro_Name, Pro_Price, Pro_com) values(105, 'Monitor', 5000, 11);
insert into products (Pro_Id, Pro_Name, Pro_Price, Pro_com) values(106, 'DVD drive', 900, 12);
insert into products (Pro_Id, Pro_Name, Pro_Price, Pro_com) values(107, 'CD drive', 800, 12);
insert into products (Pro_Id, Pro_Name, Pro_Price, Pro_com) values(108, 'Printer', 2600, 13);
insert into products (Pro_Id, Pro_Name, Pro_Price, Pro_com) values(109, 'Refill cartridge', 350, 13);

select avg(Pro_Price) from products where Pro_com = 16;
select Pro_Name, Pro_Price from products where Pro_Price = (select min(Pro_Price) from products);

select * from products;
drop table products;                      

create table employees(
                        Emp_IDNO number(10),
                        EMP_Fname varchar2(20),
                        EMP_Lname varchar2(20),
                        EMP_Dept number(5),
                        constraint pk_employees primary key(Emp_IDNO)
                       );
insert into employees (Emp_IDNO, EMP_Fname, EMP_Lname, EMP_Dept) values(127323, 'Michale', 'Robbin', 57);
insert into employees (Emp_IDNO, EMP_Fname, EMP_Lname, EMP_Dept) values(526689,	'Carlos', 'Snares',	63);
insert into employees (Emp_IDNO, EMP_Fname, EMP_Lname, EMP_Dept) values(843795,	'Enric', 'Dasio', 57);
insert into employees (Emp_IDNO, EMP_Fname, EMP_Lname, EMP_Dept) values(328717,	'Jhon',	'Snares', 63);
insert into employees (Emp_IDNO, EMP_Fname, EMP_Lname, EMP_Dept) values(444527,	'Joseph', 'Dosni', 47);
insert into employees (Emp_IDNO, EMP_Fname, EMP_Lname, EMP_Dept) values(659831,	'Zanifer', 	'Emily', 47);
insert into employees (Emp_IDNO, EMP_Fname, EMP_Lname, EMP_Dept) values(847674,	'Kuleswar',	'Sitaraman', 57);
insert into employees (Emp_IDNO, EMP_Fname, EMP_Lname, EMP_Dept) values(748681,	'Hanrey', 'Gabriel', 47);
insert into employees (Emp_IDNO, EMP_Fname, EMP_Lname, EMP_Dept) values(555935,	'Alex',	'Manuel', 57);
insert into employees (Emp_IDNO, EMP_Fname, EMP_Lname, EMP_Dept) values(539569,	'George', 'Mardy', 27);
insert into employees (Emp_IDNO, EMP_Fname, EMP_Lname, EMP_Dept) values(733843,	'Mario', 'Saule', 63);
insert into employees (Emp_IDNO, EMP_Fname, EMP_Lname, EMP_Dept) values(631548,	'Alan',	'Snappy', 27);
insert into employees (Emp_IDNO, EMP_Fname, EMP_Lname, EMP_Dept) values(839139,	'Maria', 'Foster', 57);

select distinct EMP_Lname from employees;
select * from customers where grade > 100;
select * from customers where city ='New York' or grade >100;
select * from customers where not(city ='New York' or grade >100);
select * from employees;

create table purchase (
                        ord_no number(10),
                        purch_amt number(10),
                        ord_date date,
                        custmoer_id number(10),
                        salesman_id number(10),
                        constraint pk_purchase primary key(ord_no)
                      );
insert into purchase(ord_no, purch_amt,	ord_date, custmoer_id, salesman_id ) values(70001,	150.5, to_date('2012/10/05','yyyy/mm/dd'), 3005,   5002);
insert into purchase(ord_no, purch_amt,	ord_date, custmoer_id, salesman_id ) values(70009,	270.65, to_date('2012-09-10','yyyy/mm/dd'),	3001,	5005);
insert into purchase(ord_no, purch_amt,	ord_date, custmoer_id, salesman_id ) values(70002,	65.26, to_date('2012-10-05','yyyy/mm/dd'),	3002,	5001);
insert into purchase(ord_no, purch_amt,	ord_date, custmoer_id, salesman_id ) values(70004,	110.5, to_date('2012-08-17','yyyy/mm/dd'),	3009,	5003);
insert into purchase(ord_no, purch_amt,	ord_date, custmoer_id, salesman_id ) values(70007,	948.5, to_date('2012-09-10','yyyy/mm/dd'),	3005,	5002);
insert into purchase(ord_no, purch_amt,	ord_date, custmoer_id, salesman_id ) values(70005,	2400.6, to_date('012-07-27','yyyy/mm/dd'),	3007,	5001);
insert into purchase(ord_no, purch_amt,	ord_date, custmoer_id, salesman_id ) values(70008,	5760, to_date('2012-09-10','yyyy/mm/dd'),	3002,	5001);
insert into purchase(ord_no, purch_amt,	ord_date, custmoer_id, salesman_id ) values(70010,	1983.43, to_date('012-10-10','yyyy/mm/dd'),	3004,	5006);
insert into purchase(ord_no, purch_amt,	ord_date, custmoer_id, salesman_id ) values(70003,	2480.4, to_date('2012-10-10','yyyy/mm/dd'),	3009,	5003);
insert into purchase(ord_no, purch_amt,	ord_date, custmoer_id, salesman_id ) values(70012,	250.45, to_date('2012-06-27','yyyy/mm/dd'),	3008,	5002);
insert into purchase(ord_no, purch_amt,	ord_date, custmoer_id, salesman_id ) values(70011,	75.29,  to_date('2012-08-17','yyyy/mm/dd'),	3003,	5007);
insert into purchase(ord_no, purch_amt,	ord_date, custmoer_id, salesman_id ) values(70013,	3045.6,	to_date('2012-04-25','yyyy/mm/dd'),	3002,	5001);
select * from purchase;
select * from purchase where not((ord_date = to_date('2012-09-10','yyyy/mm/dd') and salesman_id >505) or purch_amt >1000);
select * from purchase where not((ord_date = to_date('2012-08-17','yyyy/mm/dd') or custmoer_id >3005) and purch_amt <1000);
