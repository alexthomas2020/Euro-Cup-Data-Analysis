#2. Write a SQL query to find the number of matches that were won by penalty shootout.
select count(distinct match_no) from euro_cup_2016.penalty_shootout;