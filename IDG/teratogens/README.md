## Structural Birth Defect (SBD) List curated from https://birthdefects.org/list-structural-birth-defects/ 
##

1. ### Known SBD Teratogens were internet searched using some of the following links: 
- https://www.birthinjuryhelpcenter.org/medication-birth-defects.html
- https://www.birthinjuryhelpcenter.org/medications-pregnancy.html
- https://www.cdc.gov/pregnancy/meds/treatingfortwo/images/treating-for-two-infographic.gif
- https://www.uofmhealth.org/health-library/uf9707
- https://www.cdc.gov/ncbddd/birthdefects/prevention.html
- https://mothertobaby.org/fact-sheets/
- https://wikem.org/wiki/Drug_pregnancy_categories

##


2. ### Used Drug Central to query FDA pregnancy X & D drugs, then SQL query to map drugs to genes
- smiles and names of active pharmaceutical ingredients (API) in those products.
- targets for those APIs, with a better potency than 1 uM 
- all SQL queries used to extract this [Data](https://github.com/nih-cfde/ReproToxTables/tree/main/IDG/teratogens/data)
##


3. ### Pull Placental Barrier drug list from this publication: [Here](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8329444/)

##
> *internal note:*
- a) (IDG/LINCS)curated list from literature - (IDG pulled from various literature], LINCS curated from CDC 
- b) (LINCS) data pulled from their Drugshot or whatever appyter
- c) (IDG) DrugCentral data (ie. FDA Pregnancy categories X & D; *but we need ADMET properties included*
- d) (IDG) Placenta Barrier crossing drugs
- e) (LINCS/IDG) L1000 LINCS alignments with DODGE gene lists; (IDG) added alignment with Descartes
- f) (LINCS/IDG)  similarity matrices/small molecule clustering
