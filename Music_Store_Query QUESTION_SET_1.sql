--Q1 Who is the senior most employee based on job title?
	
Select * from public.employee
Order by levels desc
limit 1

--Q2 Which country have the most invoices?

Select count(*) as c, billing_country
	from public.invoice
    group by billing_country
order by c desc

--Q3 what are top 3 values of total voice?

select  total from public.invoice
order by total desc
limit 3

--Q4 Which city has the best customer? We would like to throw a promotional music festival
-- in the city we made the most money . Write a query that return one city that has the highest
-- sum of invoice totals Return both city name  and sum of all invoice totals.

select sum (total) as invoice_total, billing_city 
from public.invoice
group by billing_city 
order by invoice_total desc 

-- Q5 Who is the best customer? The customer who has spent the most money will be declared the best customer. 
--Write a query that returns the person who has spent the most money.

Select public.customer.customer_id, public.customer.first_name,public.customer.last_name, sum(public.invoice.total) as total
from public.customer
join public.invoice on public.customer.customer_id = public.invoice.customer_id
group by public.customer.customer_id
order by total desc
limit 1



























