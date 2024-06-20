-- HOTEL RESERVATION ANALYSIS SQL PROJECT

select * from "Hotel"

--1. What is the total number of reservations in the dataset?

select count(*) as  total_no_of_reservations  from "Hotel"

---2. Which meal plan is the most popular among guests?

select  type_of_meal_plan,count(type_of_meal_plan) as popular_meal_plan from "Hotel"
group by type_of_meal_plan
order by count(type_of_meal_plan) desc

--3. What is the average price per room for reservations involving children?

select * from "Hotel"

select avg(avg_price_per_room) from "Hotel"
where no_of_children >0

--4. How many reservations were made for the year 20XX (replace XX with the desired year)?

select * from "Hotel"

select count("Booking_ID") as resv_on_YEAR_2018 from "Hotel"
where arrival_year = 2018

---5. What is the most commonly booked room type?
select * from "Hotel"

SELECT ROOM_TYPE_RESERVED,COUNT(ROOM_TYPE_RESERVED) as most_commonly_booked_room_type  FROM "Hotel"
group by ROOM_TYPE_RESERVED
order by COUNT(ROOM_TYPE_RESERVED) desc

--6. How many reservations fall on a weekend (no_of_weekend_nights > 0)?
select * from "Hotel"

select count(no_of_weekend_nights) as total_resv_on_weekend from "Hotel"
where no_of_weekend_nights >0

--7. What is the highest and lowest lead time for reservations?

select max(lead_time) as maximum_lead_time, min(lead_time) as min_lead_time  from "Hotel"

--8. What is the most common market segment type for reservations?

select * from "Hotel"

select market_segment_type, count(market_segment_type) as total from "Hotel"
group by market_segment_type
order by count(market_segment_type) desc

--9. How many reservations have a booking status of "Confirmed"?

select count(booking_status) as no_of_confirmed_booking  from "Hotel"
where booking_status = 'Not_Canceled'


--10. What is the total number of adults and children across all reservations?

select * from "Hotel"

select sum(no_of_adults) as total_adults , sum(no_of_children) as total_children from "Hotel"

--11. What is the average number of weekend nights for reservations involving children?
select * from "Hotel"

select avg(no_of_weekend_nights) as average_week_child from "Hotel"
where no_of_children >0

--12. How many reservations were made in each month of the year?
select * from "Hotel"

select count("Booking_ID") as total_bokking_each_months, arrival_month, arrival_year from "Hotel"
group by arrival_month, arrival_year
order by arrival_month,arrival_year

---13. What is the average number of nights (both weekend and weekday) spent by guests for 
--each room type?

select * from "Hotel"

select  room_type_reserved,round(avg(no_of_week_nights),0) ,round(avg(no_of_weekend_nights),0)  from "Hotel"
group by room_type_reserved
order by room_type_reserved

--14. For reservations involving children, what is the most common room type, and 
--what is the average price for that room type?

select * from "Hotel"

select room_type_reserved  , count(room_type_reserved),avg(avg_price_per_room) as avg_price from "Hotel"
where no_of_children >0
group by room_type_reserved
order by avg(avg_price_per_room) desc

--15. Find the market segment type that generates the highest average price per room.
select * from "Hotel"

select market_segment_type , max(avg_price_per_room) from "Hotel"
group by market_segment_type
order by max(avg_price_per_room) desc








