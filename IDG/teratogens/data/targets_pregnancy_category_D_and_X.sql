select
  lower(product.generic_name) as product,
  structures.name,
  structures.smiles,
  act_table_full.target_name,
  act_table_full.target_class,
  act_table_full.accession,
  act_table_full.gene,
  act_table_full.swissprot,
  act_table_full.act_value,
  act_table_full.act_type,
  act_table_full.tdl
from
  section
  join label on section.label_id=label.id
  join prd2label on label.id=prd2label.label_id
  join product on prd2label.ndc_product_code=product.ndc_product_code
  join active_ingredient on product.ndc_product_code=active_ingredient.ndc_product_code
  join structures on active_ingredient.struct_id=structures.id
  join act_table_full on structures.id=act_table_full.struct_id
where
  (text like '%Pregnancy Category D%' or
  text like '%Pregnancy Category X%') and
  product.active_ingredient_count = 1 and
  act_table_full.swissprot like '%_HUMAN%' and
  act_table_full.act_value > 6
group by
  lower(product.generic_name),
  structures.name,
  structures.smiles,
  act_table_full.target_name,
  act_table_full.target_class,
  act_table_full.accession,
  act_table_full.gene,
  act_table_full.swissprot,
  act_table_full.act_value,
  act_table_full.act_type,
  act_table_full.tdl
