# 1. Write a SQL query to find the date EURO Cup 2016 started on.
select min(play_date) from euro_cup_2016.match_mast
order by play_date asc;