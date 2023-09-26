select 
  m1.name     as "目的素材",
  m2.name     as "必要素材",
  mr.quantity as "個数"
from materials m1
join material_recipes mr on m1.id = mr.res_mat_id
join materials m2 on m2.id = mr.needed_mat_id
where m1.name = '上級熾合金';