# 16. Write a SQL query to find referees and the number of matches they worked in each venue.

select R.referee_name, V.venue_name, count(*) matches
from euro_cup_2016.referee_mast R, euro_cup_2016.match_mast M, euro_cup_2016.soccer_venue V
where R.referee_id = M.referee_id and
M.venue_id = V.venue_id
group by R.referee_name, V.venue_name
order by matches DESC

