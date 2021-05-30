# 13. Write a SQL query to find all the defenders who scored a goal for their teams.

select players.player_name, players.country_name, players.posi_to_play from 
(select P.player_id, P.player_name, P.posi_to_play, C.country_name from euro_cup_2016.player_mast P, euro_cup_2016.soccer_country C
where P.team_id = C.country_id and P.posi_to_play = 'DF') as players,
euro_cup_2016.goal_details G
where players.player_id = G.player_id
