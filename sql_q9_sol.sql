# 9. Write a SQL query to find the goalkeeper’s name and jersey number, playing for
# Germany, who played in Germany’s group stage matches.

select distinct P.player_name, 
-- P.team_id, 
-- P.posi_to_play, 
-- M.team_id, M.play_stage,
P.jersey_no
from euro_cup_2016.player_mast P, euro_cup_2016.match_details M
where P.posi_to_play = 'GK' and 
M.play_stage = 'G' and 
M.team_id = P.team_id
and P.team_id in (select country_id from euro_cup_2016.soccer_country where country_name = 'Germany')