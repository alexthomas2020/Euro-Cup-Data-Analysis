# 10. Write a SQL query to find all available information about the players under contract to
# Liverpool F.C. playing for England in EURO Cup 2016.

select P.player_id, P.team_id, P.jersey_no, P.player_name, P.posi_to_play, P.dt_of_bir, P.age, P.playing_club, C.country_name
from euro_cup_2016.player_mast P, euro_cup_2016.soccer_country C
where P.team_id = C.country_id and
P.playing_club = 'Liverpool'
and C.country_name = 'England';

