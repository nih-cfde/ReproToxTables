select
  *
from
  section
  join label on section.label_id=label.id
  join prd2label on label.id=prd2label.label_id
  join product on prd2label.ndc_product_code=product.ndc_product_code
where
  text like '%Pregnancy Category D%'
