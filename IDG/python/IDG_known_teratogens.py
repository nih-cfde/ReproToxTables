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


input_file = csv.DictReader(open("input/IDG_known_SBD_teratogens.csv"))

g = Graph()

DC_ID = Namespace("https://drugcentral.org/drugcard/")
subject = Namespace("https://identifiers.org/pubchem.compound/")

g.bind('PubChem_CID',subject)
g.bind('DrugCentral_ID',DC_ID)

for row in input_file:
    Drug_URI = subject + str(row['PubChem_CID'])
    DC_URI = DC_ID + str(row['DC_ID'])
    row = dict(row)
    g.add((URIRef(Drug_URI), RDFS.label, Literal(row['Curated_known_teratogens'])) )
    g.add((URIRef(Drug_URI), RDF.type, URIRef(DC_URI)))

g.serialize(format="turtle",destination='IDG_known_SBD_teratogens.ttl')
