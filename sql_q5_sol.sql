# 5. Write a SQL query to find the number of bookings that happened in stoppage time.

select count(*) from euro_cup_2016.player_booked
where play_schedule = 'ST';

