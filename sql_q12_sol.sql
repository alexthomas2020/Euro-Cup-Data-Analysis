# 12. Write a SQL query that returns the total number of goals scored by each position on
# each country’s team. Do not include positions which scored no goals.

select players.country_name, players.posi_to_play, count(G.goal_id) from 
-- query 1: find the player and country info
(select P.player_id, P.posi_to_play, C.country_name from euro_cup_2016.player_mast P, euro_cup_2016.soccer_country C
where P.team_id = C.country_id) as players,
-- find the goals from the goals table using player_id as the key
euro_cup_2016.goal_details G
where players.player_id = G.player_id
-- group by position and country and count the grouped totals
group by players.posi_to_play, players.country_name
order by players.country_name, players.posi_to_play