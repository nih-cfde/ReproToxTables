### Birth defect terms from the CDC website

Medical terms that describe major common birth defects were extarcted from the foloowing CDC website on January 6, 2022. 
[Birth defects listing on the CDC website](https://www.cdc.gov/ncbddd/birthdefects/types.html). The extarcted terms are available as a [text file](https://github.com/nih-cfde/ReproToxTables/blob/main/CDC-birth-defects/CDC-birth-defects.txt).

---

### Gene sets associated with the birth defects from annotated databases

Using the [Enrichr](https://maayanlab.cloud/Enrichr/) term search API, we collected annotated gene sets for each birth defect term. These gene sets are provided as a [GMT file](https://github.com/nih-cfde/ReproToxTables/blob/main/CDC-birth-defects/CDC-birth-defect-genes-Enrichr.gmt).

---

### Gene sets associated with the birth defects from PubMed

Using the [Geneshot](https://maayanlab.cloud/geneshot/) API, we queried each birth defect term through PubMed to extarct PMIDs associated with each terms. These PubMed IDs were converted into genes using the AutoRIF option. The most frequently occuring genes were retained as the gene sets for each birth defect. These gene set are provided as a [GMT file](https://github.com/nih-cfde/ReproToxTables/blob/main/CDC-birth-defects/CDC-birth-defect-genes-Geneshot.gmt).

---

### Drug sets associated with the birth defects from annotated databases

Using the [DrugEnrichr](https://maayanlab.cloud/DrugEnrichr/) term search API, we collected annotated drug sets for each birth defect term. These drug sets are provided as a [DMT file](https://github.com/nih-cfde/ReproToxTables/blob/main/CDC-birth-defects/drugenrichr_birth_defects.gmt).

---

### Drug sets associated with the birth defects from PubMed

Using the [DrugShot](https://maayanlab.cloud/DrugShot/) API, we queried each birth defect term through PubMed to extarct PMIDs associated with each terms. These PubMed IDs were converted into drugs using the PubChem annotations option. The 30 most frequently occuring drugs were retained as the drug sets for each birth defect. These drug set are provided as a [DMT file](https://github.com/nih-cfde/ReproToxTables/blob/main/CDC-birth-defects/drugshot_birth_defects.gmt).

---

### Workflow to discover MOAs for birth defects by connecting birth defect terms to genes, drugs, and the LINCS L1000 gene expression signatures
![Workflow to discover MOAs for birth defects](https://github.com/nih-cfde/ReproToxTables/blob/main/CDC-birth-defects/Screen%20Shot%202022-01-09%20at%207.08.31%20PM.png)
