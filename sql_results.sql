--select * from customer;
use customer
---1 which category generated the highest revenue?

select 
      category,
     round(sum(purchase_amount),2) as highest_revenue
from customer
group by category order by highest_revenue desc
-------------------------------------------------------

--2 do discounts actually increase purchase value?

select 
    case
    when discount_applied='Yes' then 'Discount Used'
    when discount_applied='No' then 'Discount Not Used'
    end as discount_stats,
    round(sum(purchase_amount),2) as revenue,
    round(avg(purchase_amount),2) as avg_revenue
from customer
group by discount_applied
--The discounts are successfully increasing the average basket size (up by ~20% per order).
--However, since total revenue is still higher for non-discounted sales, 
--the company is maintaining a healthy balance where we aren't overly reliant on
--promotions to generate the majority of our income.
-------------------------------------------------------

--3  what is the total revenue generated based on gender and discount applied

select 
    gender,
    round(sum(purchase_amount),2) as total_revenue
from customer
group by gender order by total_revenue desc

select 
    gender,
    round(sum(purchase_amount),2) as total_revenue,
    discount_applied
from customer
group by gender, discount_applied
order by total_revenue desc 
--impact:-
        --helps in targeted marketing strategy
        --improves customer segmentation 
        --enhacnes personalization efforts

--4 which customer applied the discount but still spent more then the average purchase amount

select top 10
       customer_id,
       purchase_amount,
       discount_applied
from customer
where discount_applied='Yes' and purchase_amount> (select avg(purchase_amount) from customer)
--total 529 customers 
--impact:-
        --identifies premium discount sensitive customers
        --enables targeted discount campaigns
        --improves customer retention and loyalty point strategy

--5 which are the top/bottom 5 products with the highest avg rating
select top 5
    item_purchased,
    round(avg(review_rating),1) as avg_rating
from customer
group by item_purchased order by avg_rating desc
select top 5
    item_purchased,
    round(avg(review_rating),1) as avg_rating
from customer
group by item_purchased order by avg_rating asc
--busines problem- no visibility of high performance and low prformance products

--6 shipping type performance
select 
    shipping_type,
    count(distinct customer_id) as order_placed,
    round(sum(purchase_amount),2) as total_revenue,
    round(avg(purchase_amount),2) as avg_revenue
from customer
group by shipping_type order by total_revenue desc
-- shows which shipping type is prefered by customers
-- which shipping method generated thw most revenue

--7 do subcribed customers spend more in comparison to non-subscribed
--performance of loyalty program
select 
    subscription_status,
    count(customer_id) as users,
    round(avg(purchase_amount),2) as avg_revenue,
    round(sum(purchase_amount),2) as total_revenue
from customer
group by subscription_status
--to find the effectiveness of loyalty program


--8 top 5 product purchased with highest discount usage

select top 5
    item_purchased,
    count(item_purchased) as no_of_purchases,
    count(case when discount_applied='Yes' then 1 end) as discount_applied_freq,
    round(count(case when discount_applied='Yes' then 1 end)*100/count(*),2) as discount_percentage
from customer
group by item_purchased order by discount_percentage desc

--9 segment customers into new, returning and loyal based ontheir total number of previous purchases,
--and show the count of each segment
select 
    case 
    when previous_purchases = '0' then 'New customer'
    when previous_purchases between 1 and 15 then 'Returning Customer'
    else 'Loyal Customer'
    end as customer_segment,
    count(*) as customer_count
from customer
group by case 
    when previous_purchases = '0' then 'New customer'
    when previous_purchases between 1 and 15 then 'Returning Customer'
    else 'Loyal Customer'
    end
--can create custom strategy in relation to customer segment 
--retention strategies
--personalized marketing

--10 what are the top 3 most purchased products within each category?
--select * from customer
with rank_all as (
select 
    category,
    item_purchased,
    count(item_purchased) as most_purchased,
    rank() over(partition by category order by  count(item_purchased) desc) as item_rank
from customer
group by category, item_purchased)
select * from rank_all where item_rank <=3 order by category,item_rank
-- now we know what item s to keep at stock 
--optimize inventory control
-- control supply according to demand

--11 are customers who are repeat buyers(more than 5 recurring purchases) also likely to subscribe

select 
    case
    when previous_purchases>5 then 'Repeat Buyer'
    else 'New Buyer'
    end as customer_type,
    subscription_status,
    count(*) as customer_count,
    count(*) * 100 /sum(count(*)) over (partition by 
                                           case
                                           when previous_purchases>5 then 'Repeat Buyer'
                                           else 'New Buyer'
                                           end) as Percents
from customer
group by 
    case
    when previous_purchases>5 then 'Repeat Buyer'
    else 'New Buyer'
    end,subscription_status
--problem unclear relationship between loyalty and subscribing 

--12 what is revenue contribution according to each age group

select
    case
    when age < 18 then 'Under 18'
    when age between 18 and 25 then '18-25'
    when age between 26 and 35 then '26-35'
    when age between 36 and 45 then '36-45'
    when age between 46 and 55 then '46-55'
    else 'Above 55'
    end as age_group,
    round(sum(purchase_amount),2) as total_revenue
from customer
group by 
    case
    when age < 18 then 'Under 18'
    when age between 18 and 25 then '18-25'
    when age between 26 and 35 then '26-35'
    when age between 36 and 45 then '36-45'
    when age between 46 and 55 then '46-55'
    else 'Above 55'
    end order by total_revenue desc
-- shows which age group generates more revenue 
-- age segmentation and marketing strategy

    
