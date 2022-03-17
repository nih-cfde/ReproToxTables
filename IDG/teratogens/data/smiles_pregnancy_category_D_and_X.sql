select
  lower(product.generic_name) as product,
  structures.name,
  structures.smiles
from
  section
  join label on section.label_id=label.id
  join prd2label on label.id=prd2label.label_id
  join product on prd2label.ndc_product_code=product.ndc_product_code
  join active_ingredient on product.ndc_product_code=active_ingredient.ndc_product_code
  join structures on active_ingredient.struct_id=structures.id
where
  (text like '%Pregnancy Category D%' or
  text like '%Pregnancy Category X%') and
  product.active_ingredient_count = 1
group by
  lower(product.generic_name),
  structures.name,
  structures.smiles
