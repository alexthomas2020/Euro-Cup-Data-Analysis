# 15. Write a SQL query to find the referees who booked the most number of players.

select R.referee_name, count(P.match_no) players_booked
from euro_cup_2016.referee_mast R, euro_cup_2016.match_mast M, euro_cup_2016.player_booked P
where R.referee_id = M.referee_id and
M.match_no = P.match_no
group by R.referee_name
order by players_booked DESC
