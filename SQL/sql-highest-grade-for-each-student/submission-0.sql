with ranked_list as (
    select student_id , exam_id , score,
    DENSE_RANK() over(partition by student_id order by score desc , exam_id asc) as r
    from exam_results )
select student_id , exam_id , score 
from ranked_list 
where r=1
order by student_id asc ;