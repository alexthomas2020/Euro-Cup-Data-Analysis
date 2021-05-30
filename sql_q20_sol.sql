# 20. Write a SQL query to find the substitute players who came into the field in the first
# half of play, within a normal play schedule.

select IO.player_id, IO.in_out, IO.play_schedule, IO.play_half, P.player_name as substitute_player
from euro_cup_2016.player_in_out IO, euro_cup_2016.player_mast P
where IO.player_id = P.player_id and
IO.in_out = 'I' and
IO.play_schedule = 'NT' and
IO.play_half = '1'
