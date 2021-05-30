# 8. Write a SQL query to find the match number for the game with the highest number of
# penalty shots, and which countries played that match.

select match_no, count(kick_no) as kicks from euro_cup_2016.penalty_shootout
group by match_no
order by kicks desc
LIMIT 1
