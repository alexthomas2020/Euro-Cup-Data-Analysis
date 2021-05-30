# 7. Write a SQL query to find all the venues where matches with penalty shootouts were
# played.

select M.match_no,  M.decided_by, M.venue_id, V.venue_name from euro_cup_2016.match_mast M, euro_cup_2016.soccer_venue V
where M.decided_by = 'P' and M.venue_id = V.venue_id