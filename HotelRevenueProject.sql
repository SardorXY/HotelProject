-- 1st TASK. Finding out growing hotel revenue by year 
-- Combining tables as CTE table 
WITH hotels as
(
SELECT * FROM [2018]
UNION
SELECT *FROM [2019]
UNION
SELECT *FROM [2020]
)
SELECT arrival_date_year, hotel, round(SUM((stays_in_week_nights + stays_in_weekend_nights)*adr),2) as revenue -- adr is daily rate of the hotel
FROM hotels
Group By arrival_date_year,hotel

WITH hotels as 
SELECT * FROM [2018]
UNION
SELECT *FROM [2019]
UNION
SELECT *FROM [2020]
)
SELECT *
FROM hotels
Left JOIN dbo.market_segment
	ON hotels.market_segment = market_segment.market_segment
left join dbo.meal_cost
	ON meal_cost.meal = hotels.meal

 





