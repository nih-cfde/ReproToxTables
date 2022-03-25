import os

import pandas as pd
import numpy as np
import h5py as h5

import requests
from tqdm import tqdm
import time
import json
import csv
import rdflib
from rdflib import Graph, Literal, Namespace, URIRef
from rdflib.namespace import DCTERMS, RDF, RDFS, SKOS, XSD

input_file = csv.DictReader(open("input/Descartes_filtered_Heart_GeneList.csv"))

g = Graph()
PM = "pvalue_more: "
PL = "pvalue_less: "
#do = "http://www.w3.org/2004/02/skos/core#birth_defect"
gene_symbol = Namespace("http://identifiers.org/hgnc.symbol/")

g.bind('gene',gene_symbol)
#g.bind('do',do)

for row in input_file:
    gene_URI = gene_symbol + str(row['gene'])
    row = dict(row)
    g.add((URIRef(gene_URI), RDFS.label, Literal(PM + row['pvalue_Heart_more'])) )
    g.add((URIRef(gene_URI), RDFS.label, Literal(PL + row['pvalue_Heart_less'])) )

g.serialize(format="turtle",destination='IDG_Descartes_heart.ttl')
