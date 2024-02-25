USE retail_events_db;
select * from dim_campaigns;
select * from dim_products;
select * from dim_stores;
select * from fact_events;

select * from fact_events where promo_type='BOGOF' and base_price > 500 limit 30;

select * from dim_stores;

SELECT city, COUNT(DISTINCT store_id) AS distinct_count
FROM dim_stores
GROUP BY city;


select * from fact_events;


SELECT base_price *   quantity_sold_after_promo AS result_1
FROM fact_events;
SELECT base_price *  quantity_sold_before_promo AS result
FROM fact_events;

select * from fact_events;

SELECT dim_campaigns.campaign_id, campaign_name 
FROM dim_campaigns 
left JOIN fact_events ON dim_campaigns.campaign_id = fact_events.campaign_id;
select *,if(quantity_sold_before_promo > quantity_sold_after_promo,'yes','no') as ISD from fact_events;

select *,if(quantity_sold_before_promo * base_price > quantity_sold_after_promo * base_price,'yes','no') as IR from fact_events;

SELECT *, quantity_sold_before_promo * base_price AS total_sales_before,
		  quantity_sold_after_promo * base_price as total_sales_after
FROM fact_events;
