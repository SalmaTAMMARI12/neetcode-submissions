select S.name
From sales_person S left join orders O on S.sales_id=O.sales_id
                    left join company C on O.com_id =C.com_id
group by S.sales_id ,S.name
having( coalesce(sum(case when C.name = 'CRIMSON' then 1 else 0 end),0)= 0);


