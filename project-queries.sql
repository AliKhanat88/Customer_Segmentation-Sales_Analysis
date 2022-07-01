-- which city/state/country has highest no. of orders
select c.city , c.state, c.country , customerName , contactFirstName ,
	contactLastName , count(  distinct o.orderNumber ) as order_amount
from customers c
join orders o
on c.customerNumber = o.customerNumber
group by c.city
order by order_amount desc
limit 10;

-- where customer number is high and offices are built in that specific city
SELECT count(DISTINCT customerNumber) as CustomerNumber , o.addressLine1 , o.postalCode , s.city
FROM employees e
join customers s
ON 	e.employeeNumber = s.salesRepEmployeeNumber
join offices o
ON e.officeCode = o.officeCode
group by o.officeCode
order by customerNumber desc;

-- how much order does a customer place order and its credit limit
select c.customerNumber, c.contactFirstName, contactLastName,  count( o.orderNumber) orderCount,  c.customerName as company, c.creditLimit
from customers c
join orders o
	on c.customerNumber = o.customerNumber
group by c.customerNumber
order by c.creditLimit desc
limit 20;

-- average orders


-- customer who has recently purchased
SELECT c.customerNumber, contactFirstName as customerfirstname , contactLastName as customerlastname , orderNumber , orderDate , requiredDate
FROM customers c
join orders o
on c.customerNumber = o.customerNumber
order by orderDate desc;

-- which product code is the most running one
select p.productCode , productName ,quantityInStock , quantityOrdered , orderLineNumber , orderNumber
from products p
join orderdetails o
on o.productCode = p.productCode
order by quantityOrdered desc;

Select 
	c.customerNumber,
    max(o.orderDate) as lastOrderDate,
    min(o.orderdate) as firstOrderDate,
    datediff(max(o.orderDate),min(o.orderDate)) / count(o.orderNumber) as avrg_span
from customers c
join orders o
	on c.customerNumber = o.customerNumber
group by customerNumber
having avrg_span != 0
order by avrg_span;
















