import os

import pandas as pd
import numpy as np
import h5py as h5

import requests
from tqdm import tqdm
import time
import json
import rdflib
from rdflib import Graph, RDF, Namespace


disease_genes_table = pd.read_excel('input/SBD_HPO_genes.xlsx',
                             skiprows=1,
                             index_col=0).reset_index(drop=True)
disease_genes = {}
for disease in disease_genes_table.columns:
    disease_genes[disease.replace(":","_")] = disease_genes_table[disease].dropna().tolist()
g = Graph()

do = Namespace("https://www.ebi.ac.uk/spot/oxo/terms/")
obo = Namespace("http://purl.obolibrary.org/obo/")
predicate = Namespace("https://semanticscience.org/resource/")
gene_symbol = Namespace("http://identifiers.org/hgnc.symbol/")

g.bind('gene',gene_symbol)
g.bind('relationship',predicate)
g.bind('obo',obo)
g.bind('do',do)

for disease,gene_list in disease_genes.items():
    for gene in gene_list:
        g.add((obo[disease],RDF.type,do['DOID_4']))
        g.add((obo[disease],predicate['SIO_000983'],gene_symbol[gene]))
g.serialize(format="turtle",destination='birth_defect_gene_associations_KG.ttl')
