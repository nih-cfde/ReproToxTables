select
 target.id as target_id,
 target.name as target_name,
 protein.uniprot,
 protein.sym,
 target.tdl,
 target.fam,
 expression.etype,
 expression.tissue,
 expression.qual_value,
 expression.number_value
from 
   protein 
   join target on protein.id=target.id
   join expression on protein.id=expression.protein_id
where
 etype like 'HPM%' and
 tissue in ('Fetal Brain', 'Fetal Heart', 'Placenta')
