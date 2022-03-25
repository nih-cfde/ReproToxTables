# IDG's pipeline for Structural Birth Defects (SBD) data curation:
### SBD terms mapped to HPO to genes
 - Curated Human Phenotype Ontology (HPO) Gene-list for SBD. [HPO](http://purl.obolibrary.org/obo/hp/hpoa/phenotype_to_genes.txt)
 - DrugCentral query to make SBD genes mapped to known small molecules/drugs
 
### Using Pharos to query HPM gene expression
 - Queried Fetal tissue (normal) gene expression data from Human Proteome Map (HPM) using [SQL](https://github.com/nih-cfde/ReproToxTables/blob/main/IDG/HPM_fetal_target.sql)
##
 
*description of datasets*
### teratogens
- Curated Known teratogens and xenobiotics that cause SBD to HPO gene; manually curated [more info here:](https://github.com/nih-cfde/ReproToxTables/tree/main/IDG/teratogens) and DrugCental [SQL]

### Great Vessel
- Used KF/SPARC consensus **GreatVessel** HPO gene-list and mapped to known small molecules/drugs via DrugCentral [SQL]
- Human Gene Expression During Development (DESCARTES) alignments with HPO genes [DESCARTES](https://descartes.brotmanbaty.org/bbi/human-gene-expression-during-development/)
- DESCARTES mapped with LINCS L1000 Up/Down Consensus Gene (drug effect on cell line)
### CNS
- Used KF/SPARC consensus **CNS** HPO gene-list and mapped to known small molecules/drugs via DrugCentral [SQL]
- Human Gene Expression During Development (DESCARTES) alignments with HPO genes [DESCARTES](https://descartes.brotmanbaty.org/bbi/human-gene-expression-during-development/)
- DESCARTES mapped with LINCS L1000 Up/Down Consensus Gene (drug effect on cell line)
### Heart
- Used KF/SPARC consensus **Heart** HPO gene-list and mapped to known small molecules/drugs via DrugCentral
- Human Gene Expression During Development (DESCARTES) alignments with HPO genes [DESCARTES](https://descartes.brotmanbaty.org/bbi/human-gene-expression-during-development/dataset/heart)
- DESCARTES mapped with LINCS L1000 Up/Down Consensus Gene (drug effect on cell line)

