# 4. Write a SQL query to compute a list showing the number of substitutions that
# happened in various stages of play for the entire tournament.

select play_schedule, play_half, count(*) as subs_count from euro_cup_2016.player_in_out
where in_out = 'I'
group by play_schedule, play_half
order by play_schedule, play_half, subs_count desc
