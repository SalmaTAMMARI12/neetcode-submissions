with ranked as (select student_id,
exam_id,
score,
dense_rank()over(partition by student_id order by score desc,exam_id asc) as r 
from exam_results )

select student_id , exam_id , score from ranked where r=1 order by student_id asc;