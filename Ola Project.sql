create database Ola;
use Ola;
select * from booking;

# 1. Retrieve all successful bookings
create view Successful_Bookings as
select  * from booking
where Booking_Status = 'Success';

select * from Successful_Bookings;

# 2. Find the average ride distance for each vehicle type.
create view avg_distance as
select Vehicle_Type, round(avg(Ride_Distance), 2) as avg_distance from booking
group by Vehicle_Type;

select * from avg_distance;

# 3. Get the number of canceled ride by customers.
create view canceled_ride as
select count(*) from booking
where Booking_Status = 'Canceled by Customer';

select * from canceled_ride;

# 4. List the top 5 customers who booked the highest number of rides.
create view ride_count as
select Customer_ID, count(Booking_ID) as Ride_Count
FROM booking
group by Customer_ID
order by Ride_Count desc
limit 5;
select * from ride_count;

# 5. Get the number of rides canceled by drivers due to personal and car related isssue.
create view canceled_ride_by_driver as
select count(Canceled_Rides_by_Driver) from booking
where Canceled_Rides_by_Driver = 'Personal & Car related issue';
 select * from canceled_ride_by_driver;

# 6. Find the maximum and Minimum drivier ratings for prime Sedan bookings.
create view max_min_ratings as
select max(Driver_Ratings) as max_ratings,
min(Driver_Ratings) as min_ratings
from booking 
where Vehicle_Type = 'Prime Sedan';

select * from max_min_ratings;

# 7. Retrieve all the rides where payment was made using UPI.
create view UPI_payment as
select * 
from booking
where Payment_Method = 'UPI';

select	* from UPI_payment;

# 8. Find the average customer rating per vehicle type.
create view vehicle_ratings as
select Vehicle_Type, round(avg(Driver_Ratings), 2) as avg_ratings 
from booking
group by Vehicle_Type;

select * from vehicle_ratings;

# 9. Calculate the total bookings value of rides completed successfully.
create view booking_value as
SELECT CONCAT(ROUND(SUM(Booking_Value)/1000000, 2), 'M') AS Total_Booking_Value
FROM booking
WHERE Booking_Status = 'Success';

select * from booking_value;

# 10. List all the incomplete rides along with the reasons.
create view incomplete_rides as
select Booking_ID, Incomplete_Rides_Reason
from booking
where Incomplete_Rides = 'Yes'; 

select * from incomplete_rides;



























