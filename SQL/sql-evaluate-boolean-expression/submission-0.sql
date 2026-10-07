select E.left_operand ,E.operator ,E.right_operand ,
case when E.operator = '>' and V1.value > V2.value then 'true'
     when E.operator = '<' and V1.value < V2.value then 'true'
     when E.operator = '=' and V1.value = V2.value then 'true'
else 'false' end 
as value 
from expressions E join variables V1 on E.left_operand = V1.name
                   join variables V2 on E.right_operand =V2.name;
