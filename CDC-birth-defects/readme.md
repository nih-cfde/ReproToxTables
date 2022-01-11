### Extracting a list of birth defect terms from the CDC website

Medical terms that describe major common birth defects were extarcted from the foloowing CDC website on January 6, 2022. 
[Birth defects listing on the CDC website](https://www.cdc.gov/ncbddd/birthdefects/types.html).

---

### Extracting gene sets associated with the birth defects from annotated databases

Using the [Enrichr](https://maayanlab.cloud/Enrichr/) term search API, we collected annotated gene sets for each birth defect term. These gene sets are provided as a [GMT file](https://github.com/nih-cfde/ReproToxTables/blob/main/CDC-birth-defects/CDC-birth-defect-genes-Enrichr.gmt).

---

### Extracting gene sets associated with the birth defects from PubMed

Using the [Geneshot](https://maayanlab.cloud/geneshot/) API, we queried each birth defect term through PubMed to extarct PMIDs associated with each terms. These PubMed IDs were converted into genes using the AutoRIF option. The most frequently occuring genes were retained as the gene sets for each birth defect. These gene set are provided as a [GMT file](https://github.com/nih-cfde/ReproToxTables/blob/main/CDC-birth-defects/CDC-birth-defect-genes-Geneshot.gmt)

---
