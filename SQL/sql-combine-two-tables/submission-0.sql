select P.first_name , P.last_name , A.city , A.state 
from person P left join address A on P.person_id=A.person_id ;

