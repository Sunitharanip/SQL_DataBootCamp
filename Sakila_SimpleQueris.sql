
use classicmodels;

select distinct country
from customers;

##2)number of cities in customer table
 
select count(city) as no_cities 
from customers; 

##how many my customers from london in customer table

Select count(city) as customer
from customers
where city='London';

##4)how many customers from UK but not from London

select count(city) as customers
from customers
where  country = 'UK' and  city !='London';

select *
from customers
where  country = 'UK' and  city !='London';

##5)no of sales Rep in Employees table
select * from employees;

select count(jobTitle) as Sales_Rep
from employees
where jobTitle = 'Sales Rep';

##6)addrsss line2 for the office in San Francisco in offices table


select city,addressLine2
from offices
where city = 'san Francisco';

##7)largest quantity ordered in orderdetails

select max(quantityOrdered) as max_quantity
from  orderdetails;

##)highest amount paid on 2003-09-28 in payments table

select * from payments;

select max(amount)
from payments
where paymentdate = '2003-09-28';

select * from employees;

##q1)select customers where postalcode is null

select * from customers
where postalCode is null;

select * from payments;

##q2)from paymentscustomers
select customerName from customers
order by customerName;


select * from payments
where amount >= 5000
order by amount desc
limit 3;


##q3)


select addressLine1 
from offices where 
addressLine1 not like "S%"
and country = "USA";

##Q4)

select *
from orders
where orderDate < '2005-05-17';

