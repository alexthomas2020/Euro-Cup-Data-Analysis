# 19. Write a SQL query to find the number of captains who were also goalkeepers.

select posi_to_play, count(*) no_of_captains from 
(select distinct P.player_id,
p.posi_to_play
from euro_cup_2016.match_captain MC, euro_cup_2016.player_mast P
where MC.player_captain = P.player_id and
P.posi_to_play = 'GK'
order by P.player_id) results
group by posi_to_play





select * from euro_cup_2016.player_mast where posi_to_play = 'GK'