use ecomerce;
select* from orders;
desc orders;
-- total orders
select count(*) as total_customers from orders;
-- total sales
select sum(net_amount) as total_sales from orders;

-- top products 
select product,sum(net_amount) as sales from orders group by product order by 2 desc;

-- top cities
select city,sum(net_amount) as sales from orders group by city order by 2 desc;

-- montly sales

select  Month ,sum(net_amount)  as sales from orders group by month order by 2 desc;

-- higest profit product
select product,sum(profit) as profit from  orders group by product order by 2 desc;

-- payment mode distriution 
select Payment_Mode,count(*) as total_orders from orders group by payment_mode order by 2 desc;

