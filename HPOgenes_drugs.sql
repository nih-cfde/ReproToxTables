select
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
  structures
  join act_table_full on structures.id=act_table_full.struct_id
where
  act_table_full.swissprot like '%_HUMAN%' and
  act_table_full.act_value > 6 and
  act_table_full.gene in ('GENE')
group by
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
