# 18. Write a SQL query to find the highest number of foul cards given in one match.

select match_no,  count(*) foul_cards from euro_cup_2016.player_booked P
group by match_no
order by foul_cards DESC
LIMIT 1
