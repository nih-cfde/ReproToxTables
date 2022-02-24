import csv
from collections import defaultdict

HP2GENE_FILE = 'data/phenotype_to_genes.txt'
HPOIDS = ['HP:0006703',
'HP:0011297',
'HP:0000369',
'HP:0000377',
'HP:0000078',
'HP:0010461',
'HP:0010460',
'HP:0001629',
'HP:0000238',
'HP:0000324',
'HP:0004484',
'HP:0100021',
'HP:0000772',
'HP:0009892',
'HP:0008551',
'HP:0011266',
'HP:0008569',
'HP:0011267',
'HP:0001631',
'HP:0010772',
'HP:0004935',
'HP:0012516',
'HP:0011678',
'HP:0003298',
'HP:0002475',
'HP:0004614',
'HP:0004601',
'HP:0005857']

if __name__ == '__main__':
  hps = {}
  hp2genes = defaultdict(list)
  with open(HP2GENE_FILE, 'r') as ifh:
    tsvreader = csv.reader(ifh, delimiter='\t')
    ct = 0
    for row in tsvreader:
      if ct == 0:
        header = row
        ct += 1
        continue
      ct += 1
      hp = row[0]
      if hp not in HPOIDS:
        continue
      if hp not in hps:
        hps[hp] = row[1]
      hp2genes[hp].append( {'geneid': row[2], 'sym': row[3], 'G-D addnl': row[4], 'G-D source': row[5], 'DID': row[6]} )

  for hp,name in hps.items():
    print(f"{hp}\t{name}")
    for gd in hp2genes[hp]:
      print(f"\t\t{gd['geneid']}\t{gd['sym']}\t{gd['G-D addnl']}\t{gd['G-D source']}\t{gd['DID']}")
