# 14. Write a SQL query to find referees and the number of bookings they made for the
# entire tournament. Sort your answer by the number of bookings in descending order.

select R.referee_name, count(M.match_no) bookings 
from euro_cup_2016.referee_mast R, euro_cup_2016.match_mast M
where R.referee_id = M.referee_id
group by R.referee_name
order by bookings DESC
