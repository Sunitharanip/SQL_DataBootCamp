use classicmodels;

/* 1- Find office information of each employee with their first, lastname, addressLine1, state and their city */
SELECT employees.firstName,employees.latName,offieces.addressLine1,offices.state,offices.city
 FROM employess
 INNER JOIN offices
 ON employees.officeCode = offices.officeCode


/* 2- How many orders have been placed by Herkku Gifts? */

select count(*) as no_of_orders,customerName 
from customers
inner join orders
on customers.customerNumber = orders.CustomerNumber
where customerName="Herkku Gifts";

/* 3- Write sql query to find total payments for Atelier graphique */
SELECT customers.customerName,SUM(amount) as totalPayments
 FROM payments
 INNER JOIN customers
 ON payments.customerNumber = customers.customerNumber
 WHERE customerName = "Atelier graphique";


/* 4- Write sql query find the total payments by date */
	SELECT sum(amount),paymentDate
 FROM payments
 GROUP BY paymentDate;


/* 5- Write a query to find the amount paid by each customer. */
	SELECT payments.customerNumber,customerName,sum(amount)
 FROM payments
 JOIN customers
 ON payments.customerNumber = customers.customerNumber
 GROUP BY customerNumber
 ORDER BY customerID


/* 6- Write sql to find top 10 customers the highest total amount paid */

SELECT  payments.customerNumber,customerName,sum(amount)
 FROM payments
 JOIN customers
 ON payments.customerNumber = customers.customerNumber
 GROUP BY customerNumber
 ORDER BY sum(amount) DESC
 Limit 10;


/* 7- Write a query to find the account representative for each customer.*/
SELECT c.customerNumber,c.customerName,e.firstName AS sales_representative
 FROM customers AS c
 JOIN employees AS e
 ON c.salesRepEmployeeNumber = e.employeeNumber
 ORDER BY c.customerNumber;


/* 8- Write sql query to find the employees who live in Boston */
	SELECT e.firstName AS employee_name,o.city
 FROM employees AS e
 JOIN offices AS o
 ON e.officeCode = o.officeCode
 WHERE city = "Boston";