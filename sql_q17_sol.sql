# 17. Write a SQL query to find the country where the most assistant referees come from,
# and the count of the assistant referees.

select C.country_name, count(A.ass_ref_id) no_of_ass_referees from euro_cup_2016.asst_referee_mast A, euro_cup_2016.soccer_country C
where A.country_id = C.country_id
group by C.country_name
order by no_of_ass_referees DESC
LIMIT 1