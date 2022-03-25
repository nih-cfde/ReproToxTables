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

input_file = csv.DictReader(open("input/SBD_HP.csv"))

g = Graph()

#do = "http://www.w3.org/2004/02/skos/core#birth_defect"
HP = Namespace("https://hpo.jax.org/app/browse/term/")

g.bind('HPO',HP)
#g.bind('do',do)

for row in input_file:
    HP_URI = HP + str(row['HP'])

    row = dict(row)
    g.add((URIRef(HP_URI), RDFS.label, Literal(row['birth_defect'])) )

g.serialize(format="turtle",destination='SBD_HP.ttl')
