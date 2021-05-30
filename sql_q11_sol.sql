# 11. Write a SQL query to find the players, their jersey number, and playing club who were
# the goalkeepers for England in EURO Cup 2016.

select distinct P.player_name, 
P.jersey_no,
P.playing_club,
P.posi_to_play, 
C.country_name
from euro_cup_2016.player_mast P, euro_cup_2016.soccer_country C
where P.posi_to_play = 'GK' and 
C.country_name = 'England' and 
C.country_id = P.team_id
