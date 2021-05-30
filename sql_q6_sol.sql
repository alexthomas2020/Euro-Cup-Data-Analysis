# 6. Write a SQL query to find the number of matches that were won by a single point, but
# do not include matches decided by penalty shootout.

select count(*) from 
(
select W.match_no, W.goal_score, W.goal_score-L.goal_score as goal_diff from
(select * from euro_cup_2016.match_details
where decided_by = 'N' and win_lose = 'W') as W,
(select * from euro_cup_2016.match_details
where decided_by = 'N' and win_lose = 'L') as L
where W.match_no = L.match_no
and W.goal_score = L.goal_score + 1
) results
