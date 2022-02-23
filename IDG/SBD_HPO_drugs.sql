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
  act_table_full.gene in ('AAAS','AAGAB','AARS1','AARS2','AASS','ABCA12','ABCA3','ABCA4','ABCB6','ABCC6','ABCC8','ABCC9','ABCD1','ABCD4','ABHD12','ABHD5','ABL1','ACAD8','ACADVL','ACAN','ACBD5','ACE','ACER3','ACOX1','ACP5','ACSL4','ACTA1','ACTA2','ACTB','ACTC1','ACTG1','ACTG2','ACTL6A','ACTL6B','ACTL9','ACTN2','ACVR1','ACVR2B','ACVRL1','ADA','ADA2','ADAMTS10','ADAMTS17','ADAMTS2','ADAMTS3','ADAMTSL1','ADAMTSL2','ADAR','ADARB1','ADAT3','ADCY5','ADGRG1','ADGRG2','ADGRG6','ADGRV1','ADH5','ADK','ADNP','ADSL','ADSS1','AEBP1','AFF2','AFF3','AFF4','AFG3L2','AGA','AGBL5','AGGF1','AGO2','AGPAT2','AGPS','AGRN','AGT','AGTR1','AGTR2','AHCY','AHDC1','AHI1','AHR','AHSG','AIFM1','AIP','AIPL1','AIRE','AK7','AK9','AKR1C2','AKR1C4','AKT1','AKT2','AKT3','ALAD','ALB','ALDH18A1','ALDH1A3','ALDH6A1','ALG1','ALG11','ALG12','ALG13','ALG14','ALG2','ALG3','ALG6','ALG8','ALG9','ALKBH8','ALMS1','ALOX12B','ALOXE3','ALPL','ALS2','ALX1','ALX3','ALX4','AMACR','AMER1','AMH','AMHR2','AMMECR1','AMPD1','AMPD2','AMPD3','ANAPC1','ANGPT2','ANK1','ANKH','ANKLE2','ANKRD1','ANKRD11','ANKRD17','ANKRD55','ANKS6','ANO10','ANO5','ANOS1','ANTXR1','ANTXR2','AP1G1','AP1S2','AP2M1','AP3B1','AP3B2','AP3D1','AP4B1','AP4E1','AP4M1','AP4S1','AP5Z1','APC','APC2','APTX','AQP5','AR','ARCN1','ARF1','ARFGEF2','ARHGAP29','ARHGAP31','ARHGEF18','ARHGEF6','ARID1A','ARID1B','ARID2','ARL 3.00','ARL 6.00','ARL13B','ARL2BP','ARL3','ARL6','ARL6IP1','ARL6IP6','ARMC2','ARMC5','ARMC9','ARNT2','ARSB','ARSI','ARSL','ARV1','ARVCF','ARX','ASAH1','ASCC1','ASH1L','ASNS','ASPH','ASPN','ASTL','ASXL1','ASXL2','ASXL3','ATAD1','ATAD3A','ATG7','ATIC','ATL1','ATL3','ATM','ATN1','ATOH7','ATP11A','ATP13A2','ATP1A1','ATP1A2','ATP1A3','ATP2A2','ATP5F1A','ATP6','ATP6AP2','ATP6V0A2','ATP6V1A','ATP6V1B2','ATP6V1E1','ATP7A','ATP7B','ATP8A2','ATPAF2','ATR','ATRIP','ATRX','ATXN3','ATXN8','ATXN8OS','AURKA','AURKC','AUTS2','AXIN1','AXIN2','AXL','B2M','B3GALNT2','B3GALT6','B3GAT3','B3GLCT','B4GALNT1','B4GALT1','B4GALT7','B4GAT1','B9D1','B9D2','BAG3','BANF1','BAP1','BARD1','BAX','BAZ1B','BBIP1','BBS1','BBS10','BBS12','BBS2','BBS4','BBS5','BBS7','BBS9','BCAS3','BCL10','BCL11A','BCL7B','BCOR','BCORL1','BCR','BCS1L','BDNF','BEST1','BGN','BHLHA9','BICC1','BICD2','BICRA','BIN1','BLM','BLOC1S3','BLOC1S5','BMP1','BMP15','BMP2','BMP4','BMPER','BMPR1A','BMPR1B','BMS1','BNC1','BNC2','BPNT2','BPTF','BPY2','BRAF','BRAT1','BRCA1','BRCA2','BRCC3','BRD4','BRDT','BRF1','BRIP1','BRPF1','BRWD3','BSCL2','BSND','BTD','BTG4','BTK','BTNL2','BTRC','BUB1','BUB1B','BUB3','BUD23','BVES','C11ORF80','C12ORF57','C14ORF39','C19ORF12','C1R','C2CD3','C4A','CA2','CA4','CA8','CACNA1A','CACNA1B','CACNA1C','CACNA1D','CACNA1G','CACNA1S','CADM3','CALM3','CAMK2G','CAMKMT','CAMTA1','CANT1','CAP2','CAPN1','CAPN15','CAPN3','CARD14','CARS1','CASK','CASP10','CASR','CAST','CASZ1','CATIP','CATSPER1','CATSPER2','CAV1','CAV3','CAVIN1','CBL','CBS','CBX2','CBY1','CC2D2A','CCBE1','CCDC103','CCDC141','CCDC174','CCDC22','CCDC28B','CCDC32','CCDC39','CCDC40','CCDC47','CCDC65','CCDC8','CCDC88C','CCL2','CCN2','CCN6','CCND1','CCND2','CCNF','CCNK','CCNO','CCNQ','CCR1','CCR6','CCT5','CD109','CD244','CD247','CD28','CD4','CD55','CD59','CD96','CDAN1','CDC14A','CDC40','CDC42','CDC45','CDC6','CDC73','CDCA7','CDH1','CDH11','CDH2','CDH23','CDH3','CDHR1','CDIN1','CDK10','CDK13','CDK19','CDK5','CDK8','CDKL5','CDKN1A','CDKN1B','CDKN1C','CDKN2A','CDKN2B','CDKN2C','CDON','CDT1','CDY1','CDY2A','CELF2','CENPE','CENPF','CENPJ','CENPT','CEP104','CEP112','CEP120','CEP126','CEP152','CEP164','CEP19','CEP290','CEP41','CEP55','CEP57','CEP83','CERKL','CERS3','CERT1','CFAP221','CFAP251','CFAP298','CFAP300','CFAP410','CFAP418','CFAP43','CFAP44','CFAP45','CFAP47','CFAP52','CFAP53','CFAP58','CFAP65','CFAP69','CFAP70','CFAP91','CFC1','CFL2','CFTR','CHAMP1','CHAT','CHCHD10','CHD1','CHD2','CHD3','CHD4','CHD7','CHD8','CHEK2','CHMP1A','CHN1','CHP1','CHRM3','CHRNA1','CHRNA3','CHRNA7','CHRNB1','CHRND','CHRNE','CHRNG','CHST11','CHST14','CHST3','CHSY1','CHUK','CIB1','CIBAR1','CIDEC','CIITA','CILK1','CISD2','CIT','CITED2','CKAP2L','CLCF1','CLCN1','CLCN3','CLCN4','CLCN5','CLCN7','CLCNKA','CLCNKB','CLDN11','CLDN2','CLEC7A','CLIC2','CLIP2','CLMP','CLP1','CLPP','CLRN1','CLTC','CLTCL1','CNBP','CNGA1','CNGB1','CNKSR2','CNOT1','CNOT2','CNOT3','CNTN1','CNTNAP1','CNTNAP2','COA7','COASY','COG1','COG4','COG5','COG6','COG7','COG8','COL10A1','COL11A1','COL11A2','COL12A1','COL13A1','COL14A1','COL17A1','COL18A1','COL1A1','COL1A2','COL25A1','COL27A1','COL2A1','COL3A1','COL4A1','COL4A5','COL4A6','COL5A1','COL5A2','COL6A1','COL6A2','COL6A3','COL7A1','COL9A1','COL9A2','COL9A3','COLEC10','COLEC11','COLQ','COMP','COMT','COPB1','COQ2','COQ4','COQ7','COQ8A','CORIN','COX1','COX14','COX15','COX2','COX20','COX3','COX4I1','COX6A1','COX7B','COX8A','CPE','CPLANE1','CPLX1','CPOX','CPT1C','CPT2','CRB1','CRB2','CREB3L1','CREBBP','CRELD1','CRIPT','CRKL','CRLF1','CRPPA','CRTAP','CRX','CRYAA','CRYAB','CSF1R','CSGALNACT1','CSNK2A1','CSPP1','CSRP3','CSTA','CTBP1','CTC1','CTCF','CTDP1','CTH','CTLA4','CTNNB1','CTNND1','CTNND2','CTNS','CTSB','CTSC','CTSD','CTSK','CTU2','CUL3','CUL4B','CUL7','CWC27','CWF19L1','CXCR4','CYB5A','CYBA','CYBB','CYBC1','CYFIP2','CYP11A1','CYP11B1','CYP17A1','CYP19A1','CYP21A2','CYP24A1','CYP26B1','CYP26C1','CYP27A1','CYP27B1','CYP2R1','CYP3A4','CYP4F22','CYP7B1','CYTB','DACT1','DAG1','DALRD3','DARS1','DARS2','DAZ1','DAZ2','DAZ3','DAZ4','DBH','DCAF17','DCAF8','DCC','DCHS1','DCLRE1C','DCPS','DCTN1','DCX','DDB1','DDB2','DDC','DDHD1','DDHD2','DDR2','DDRGK1','DDX11','DDX3X','DDX3Y','DDX59','DDX6','DEAF1','DEF6','DENND5A','DES','DGCR2','DGCR6','DGCR8','DGUOK','DHCR24','DHCR7','DHDDS','DHH','DHODH','DHPS','DHX16','DHX30','DHX37','DHX38','DIAPH2','DICER1','DIS3L2','DISP1','DKC1','DKK 1.00','DLAT','DLC1','DLEC1','DLG1','DLG3','DLG4','DLK1','DLL1','DLL3','DLL4','DLX3','DLX4','DLX5','DLX6','DMD','DMP1','DMPK','DMRT1','DMRT3','DMXL2','DNA2','DNAAF1','DNAAF11','DNAAF2','DNAAF3','DNAAF4','DNAAF5','DNAAF6','DNAH1','DNAH10','DNAH11','DNAH17','DNAH2','DNAH5','DNAH8','DNAH9','DNAI1','DNAI2','DNAJB11','DNAJB13','DNAJB2','DNAJB6','DNAJC12','DNAJC19','DNAJC21','DNAJC3','DNAJC30','DNAJC6','DNAL1','DNAL4','DNASE1L3','DNM1','DNM1L','DNM2','DNMT3A','DNMT3B','DOCK3','DOCK6','DOCK7','DOCK8','DOK7','DOLK','DONSON','DPAGT1','DPF2','DPH1','DPM1','DPM2','DPM3','DPP6','DPP9','DPY19L2','DPYD','DPYS','DPYSL5','DRC1','DSC2','DSE','DSG1','DSG2','DSP','DST','DSTYK','DTNA','DUOX2','DUOXA2','DUSP6','DVL1','DVL3','DYM','DYNC1H1','DYNC2H1','DYNC2I1','DYNC2I2','DYNC2LI1','DYNLT2B','DYRK1A','DYSF','DZIP1','DZIP1L','EARS2','EBF3','EBP','ECE1','ECEL1','ECHS1','EDA','EDA2R','EDEM3','EDN1','EDN3','EDNRA','EDNRB','EED','EEF1A2','EFEMP2','EFL1','EFNB1','EFTUD2','EGR2','EHHADH','EHMT1','EIF2AK3','EIF2AK4','EIF2B1','EIF2B2','EIF2B3','EIF2B4','EIF2B5','EIF2S3','EIF4A3','EIF4H','EIF5A','ELMO2','ELN','ELOVL4','EMC1','EMC10','EMD','EMG1','EML1','EN1','ENG','ENPP1','ENTPD1','EOGT','EP300','EPB41L1','EPCAM','EPG5','EPHB2','EPHB4','EPS15L1','ERAL1','ERAP1','ERBB2','ERBB3','ERCC1','ERCC2','ERCC3','ERCC4','ERCC5','ERCC6','ERCC8','ERF','ERGIC1','ERLIN1','ERLIN2','ERMARD','ESCO2','ESR1','ESR2','ESS2','ETFA','ETFB','ETFDH','EVC','EVC2','EWSR1','EXOC2','EXOC6B','EXOC7','EXOSC2','EXOSC3','EXOSC5','EXOSC9','EXT1','EXT2','EXTL3','EYA1','EYS','EZH2','F10','F11','F13A1','F13B','F2','F5','F7','F8','FA2H','FADD','FAH','FAM111A','FAM126A','FAM13A','FAM149B1','FAM161A','FAM20C','FAM50A','FAN1','FANCA','FANCB','FANCC','FANCD2','FANCE','FANCF','FANCG','FANCI','FANCL','FANCM','FAR1','FARS2','FARSA','FARSB','FAS','FASLG','FASTKD2','FAT4','FBLN1','FBLN5','FBN1','FBN2','FBXL3','FBXL4','FBXO11','FBXO38','FBXO7','FBXW11','FCGR2A','FDFT1','FDX2','FDXR','FERMT1','FEZF1','FGA','FGB','FGD1','FGD4','FGF10','FGF12','FGF13','FGF14','FGF16','FGF17','FGF20','FGF23','FGF3','FGF8','FGF9','FGFR1','FGFR2','FGFR3','FGFRL1','FGG','FH','FHL1','FHL2','FIBP','FIG4','FIGLA','FIP1L1','FITM2','FKBP10','FKBP14','FKBP6','FKRP','FKTN','FLCN','FLG','FLI1','FLII','FLNA','FLNB','FLNC','FLRT1','FLRT3','FLT1','FLT4','FLVCR1','FLVCR2','FMR1','FN1','FOS','FOXA2','FOXC1','FOXC2','FOXE1','FOXE3','FOXF1','FOXG1','FOXH1','FOXJ1','FOXL2','FOXP1','FOXP2','FOXRED1','FRAS1','FREM1','FREM2','FRG1','FRMD4A','FRMPD4','FSCN2','FSHB','FSHR','FSIP2','FTCD','FTO','FTSJ1','FUCA1','FUT8','FUZ','FXN','FXR1','FZD2','FZD4','G6PC3','GABBR2','GABRA1','GABRA2','GABRA3','GABRA5','GABRB2','GABRD','GABRG2','GAD1','GALC','GALK1','GALNS','GALNT2','GALT','GAN','GANAB','GARS1','GAS1','GAS2L2','GAS8','GATA1','GATA2','GATA3','GATA4','GATA5','GATA6','GATAD1','GATAD2B','GBA','GBA2','GBF1','GCDH','GCH1','GCM2','GDAP1','GDF1','GDF11','GDF3','GDF5','GDF6','GDF9','GDI1','GDNF','GEMIN4','GFAP','GFM2','GFPT1','GGCX','GGPS1','GHR','GIPC1','GJA1','GJA5','GJA8','GJB1','GJB2','GJB3','GJB4','GJB6','GJC2','GK','GLA','GLB1','GLDN','GLE1','GLI1','GLI2','GLI3','GLIS3','GLMN','GLRA1','GLRB','GLUL','GMNN','GMPPA','GMPPB','GNAI3','GNAO1','GNAQ','GNAS','GNAS-AS1','GNB1','GNB2','GNB4','GNB5','GNE','GNPAT','GNPTAB','GNPTG','GNRH1','GNRHR','GNS','GON7','GORAB','GP1BA','GP1BB','GP6','GP9','GPC3','GPC4','GPC6','GPHN','GPKOW','GPR101','GPR161','GPR35','GPSM2','GPT2','GPX4','GREB1L','GREM1','GRHL3','GRIA2','GRIA3','GRIA4','GRIK2','GRIN2A','GRIN2D','GRIP1','GRM7','GSC','GTF2E2','GTF2H5','GTF2I','GTF2IRD1','GTF2IRD2','GTPBP2','GUCA1B','GUCY1A1','GUCY2D','GUSB','GYG1','GZF1','H1-4','H19','H19-ICR','H6PD','HAAO','HACD1','HACE1','HADHA','HADHB','HAMP','HAND2','HARS1','HARS2','HBA1','HBA2','HBB','HCCS','HCFC1','HCN1','HDAC4','HDAC6','HDAC8','HECW2','HELLS','HEPHL1','HERC1','HERC2','HES7','HESX1','HEXB','HEY2','HFE','HFM1','HGD','HGSNAT','HHAT','HIBCH','HIC1','HINT1','HIRA','HIVEP2','HJV','HK1','HLA-B','HLA-DPA1','HLA-DPB1','HLA-DQA1','HLA-DQB1','HLA-DRB1','HMBS','HMGA2','HMGB3','HMX1','HNF1A','HNF1B','HNRNPA1','HNRNPDL','HNRNPH2','HNRNPK','HNRNPU','HOXA11','HOXA13','HOXA2','HOXB1','HOXD10','HOXD13','HPDL','HPGD','HPRT1','HPS4','HPS5','HPSE2','HRAS','HS2ST1','HS6ST1','HS6ST2','HSD17B3','HSD17B4','HSD3B2','HSF2BP','HSFY1','HSPA9','HSPB1','HSPB3','HSPB8','HSPD1','HSPG2','HTRA2','HTT','HUWE1','HYAL1','HYDIN','HYLS1','HYMAI','HYOU1','IARS1','IARS2','IBA57','IDH1','IDH2','IDH3A','IDH3B','IDS','IDUA','IER3IP1','IFIH1','IFITM5','IFNGR1','IFRD1','IFT122','IFT140','IFT172','IFT27','IFT43','IFT52','IFT57','IFT74','IFT80','IFT81','IFT88','IGBP1','IGF1','IGF1R','IGF2','IGFBP7','IGHG2','IGHMBP2','IGKC','IHH','IKBKG','IKZF1','IL10','IL10RB','IL11RA','IL12A','IL12A-AS1','IL17F','IL17RA','IL17RC','IL17RD','IL1RAPL1','IL1RN','IL21','IL23R','IL2RA','IL2RB','IL2RG','IL6ST','IL7R','IMPDH1','IMPG1','IMPG2','INF2','INPP5E','INPP5K','INPPL1','INSL3','INSR','INTS1','INTS8','INTU','INVS','IPO8','IPW','IQCB1','IQCE','IQSEC2','IREB2','IRF2BP2','IRF4','IRF5','IRF6','IRX5','ISL1','ITCH','ITGA2','ITGA2B','ITGA3','ITGA6','ITGA7','ITGA8','ITGB3','ITGB4','ITGB6','IVNS1ABP','IYD','JAG1','JAG2','JAK3','JAM3','JARID2','JMJD1C','JPH1','JPH2','JUP','KANK1','KANK2','KANSL1','KARS1','KAT5','KAT6A','KAT6B','KAT8','KATNB1','KATNIP','KBTBD13','KCNA1','KCNA2','KCNAB2','KCNB1','KCNE5','KCNH1','KCNJ1','KCNJ10','KCNJ11','KCNJ13','KCNJ18','KCNJ2','KCNJ5','KCNJ6','KCNJ8','KCNK4','KCNK9','KCNMA1','KCNN3','KCNQ1','KCNQ1OT1','KCTD1','KDELR2','KDM1A','KDM3B','KDM4B','KDM5B','KDM5C','KDM5D','KDM6A','KDM6B','KDR','KDSR','KEAP1','KIAA0319L','KIAA0586','KIAA0753','KIAA0825','KIAA1109','KIAA1549','KIDINS220','KIF11','KIF14','KIF15','KIF1A','KIF1B','KIF20A','KIF22','KIF3B','KIF5A','KIF5C','KIF7','KIFBP','KISS1','KISS1R','KIT','KIZ','KL','KLC2','KLF13','KLF6','KLHL10','KLHL15','KLHL24','KLHL40','KLHL41','KLHL7','KLHL9','KLLN','KLRC4','KMT2A','KMT2C','KMT2D','KMT2E','KMT5B','KNSTRN','KPNA3','KPTN','KRAS','KRT1','KRT10','KRT14','KRT16','KRT17','KRT2','KRT5','KRT6A','KRT6B','KRT6C','KRT83','KRT9','KY','KYNU','L1CAM','LAGE3','LAMA2','LAMA3','LAMA4','LAMB1','LAMB2','LAMB3','LAMC2','LAMP2','LARGE1','LARP7','LARS1','LARS2','LAS1L','LBR','LCA5','LDB3','LEMD2','LEMD3','LEP','LEPR','LETM1','LFNG','LGI4','LHB','LHCGR','LHX1','LHX3','LHX4','LIFR','LIG3','LIG4','LIMK1','LIMS2','LIPE','LIPN','LIPT1','LITAF','LMAN1','LMBR1','LMBRD1','LMBRD2','LMNA','LMNB1','LMNB2','LMOD1','LMOD3','LMX1B','LONP1','LORICRIN','LOX','LOXL3','LPIN1','LPIN2','LRAT','LRBA','LRIF1','LRIG2','LRP12','LRP2','LRP4','LRP5','LRPPRC','LRRC32','LRRC56','LRRC8A','LRRK1','LRRK2','LRSAM1','LSM11','LSS','LTBP1','LTBP2','LTBP3','LTBP4','LUZP1','LYST','LZTFL1','LZTR1','M1AP','MAB21L1','MAB21L2','MACF1','MACROH2A1','MAD1L1','MAD2L2','MADD','MAF','MAFB','MAG','MAGEL2','MAK','MAMLD1','MAN1B1','MAN2B1','MAP1B','MAP2K1','MAP2K2','MAP3K1','MAP3K20','MAP3K7','MAPK1','MAPK8IP3','MAPRE2','MAPT','MARS1','MARS2','MASP1','MAT2A','MATN3','MATR3','MBD5','MBTPS1','MBTPS2','MC1R','MC2R','MCC','MCFD2','MCIDAS','MCM3AP','MCM5','MCM8','MCM9','MCOLN1','MCTP2','MDM2','MECOM','MECP2','MED12','MED12L','MED13','MED13L','MED25','MED27','MEF2C','MEFV','MEG3','MEGF10','MEGF8','MEI1','MEIOB','MEIS2','MEN1','MEOX1','MERTK','MESD','MESP2','MET','METTL23','METTL27','METTL5','MFAP5','MFN2','MFRP','MFSD2A','MGAT2','MGME1','MGP','MIA3','MICU1','MID1','MID2','MINPP1','MIR140','MIR17HG','MITF','MKKS','MKRN3','MKRN3-AS1','MKS1','MLH1','MLH3','MLXIPL','MMACHC','MME','MMP1','MMP13','MMP14','MMP2','MMP21','MMP23B','MMP9','MN1','MNS1','MNX1','MOGS','MORC2','MPDZ','MPLKIP','MPV17','MPZ','MRAP','MRAS','MRE11','MRPL12','MRPL3','MRPS14','MRPS16','MRPS22','MRPS28','MRPS7','MSH2','MSH3','MSH5','MSH6','MSL3','MST1','MSTO1','MSX1','MSX2','MTAP','MTFMT','MTHFR','MTM1','MTMR14','MTMR2','MTOR','MTPAP','MTRFR','MTRR','MTTP','MTX2','MUC5B','MUSK','MVK','MXI1','MYBPC1','MYBPC3','MYC','MYCN','MYD88','MYF5','MYF6','MYH11','MYH14','MYH2','MYH3','MYH6','MYH7','MYH8','MYH9','MYL2','MYLK','MYLPF','MYMK','MYO18B','MYO9A','MYOCD','MYOD1','MYOT','MYPN','MYRF','MYSM1','MYT1L','NAA10','NAB2','NABP1','NADSYN1','NAGLU','NALCN','NANOS1','NANS','NARS1','NBAS','NBEAL2','NBN','NCAPD3','NCAPG2','NCF1','NCF2','NCF4','NCKAP1L','ND1','ND4','ND5','ND6','NDE1','NDN','NDNF','NDP','NDRG1','NDUFA10','NDUFA12','NDUFA13','NDUFA2','NDUFA4','NDUFA8','NDUFA9','NDUFAF2','NDUFAF3','NDUFAF5','NDUFAF6','NDUFB10','NDUFB11','NDUFB8','NDUFC2','NDUFS1','NDUFS2','NDUFS3','NDUFS4','NDUFS7','NDUFS8','NDUFV1','NDUFV2','NEB','NECAP1','NECTIN1','NECTIN4','NEDD4L','NEFH','NEFL','NEK1','NEK10','NEK2','NEK8','NEK9','NELFA','NEPRO','NEU1','NEUROD2','NEXMIF','NEXN','NF1','NF2','NFASC','NFE2L2','NFIA','NFIB','NFIX','NFKBIL1','NGF','NGLY1','NHP2','NHS','NIN','NIPA1','NIPA2','NIPAL4','NIPBL','NKAP','NKX2-1','NKX2-5','NKX2-6','NKX3-2','NLRP1','NLRP3','NME8','NMNAT1','NNT','NOBOX','NOD2','NODAL','NOG','NONO','NOP10','NOTCH1','NOTCH2','NOTCH2NLC','NOTCH3','NPAP1','NPHP1','NPHP3','NPHP4','NPM1','NPR 2.00','NPR 3.00','NPR2','NPR3','NR0B1','NR2E3','NR2F1','NR2F2','NR3C1','NR5A1','NRAS','NRL','NRTN','NRXN1','NSD1','NSD2','NSDHL','NSMCE2','NSMF','NSUN2','NT5C2','NTHL1','NTN1','NTNG1','NTNG2','NTRK1','NTRK2','NUAK2','NUMA1','NUP107','NUP133','NUP188','NUP37','NUP62','NUP85','NUP88','NUS1','NXN','OBSL1','OCA2','OCLN','OCRL','ODAD1','ODAD2','ODAD3','ODAD4','ODC1','OFD1','OGDH','OGT','OPA1','OPA3','OPCML','OPHN1','ORAI1','ORC1','ORC4','ORC6','OSGEP','OSTM1','OTUD5','OTUD6B','OTX2','P3H1','P4HA2','P4HB','P4HTM','PABPN1','PACS1','PACS2','PADI6','PAFAH1B1','PAH','PAK1','PAK3','PALB2','PALLD','PALS1','PAM16','PANK2','PANX1','PAPPA2','PAPSS2','PARK7','PARN','PARS2','PATL2','PAX1','PAX2','PAX3','PAX6','PAX7','PBX1','PCARE','PCBD1','PCCA','PCCB','PCDH19','PCGF2','PCLO','PCNA','PCNT','PCSK1','PCYT1A','PDE11A','PDE3A','PDE4D','PDE6A','PDE6B','PDE6D','PDE6G','PDE8B','PDGFB','PDGFRB','PDGFRL','PDHA1','PDK3','PDPN','PDXK','PEPD','PERP','PET100','PEX1','PEX10','PEX11B','PEX12','PEX13','PEX14','PEX16','PEX19','PEX2','PEX26','PEX3','PEX5','PEX6','PEX7','PGAP1','PGAP2','PGAP3','PGM1','PGM3','PGR','PHACTR1','PHEX','PHF21A','PHF6','PHF8','PHGDH','PHIP','PHKA2','PHKB','PHKG2','PHOX2B','PHYH','PI4KA','PIBF1','PIEZO1','PIEZO2','PIGA','PIGB','PIGF','PIGG','PIGH','PIGK','PIGL','PIGN','PIGO','PIGP','PIGQ','PIGS','PIGT','PIGU','PIGV','PIGW','PIGY','PIK3C2A','PIK3CA','PIK3CD','PIK3R1','PIK3R2','PINK1','PISD','PITX1','PITX2','PITX3','PKD1','PKD1L1','PKD2','PKDCC','PKHD1','PKP1','PLA2G2A','PLA2G6','PLAA','PLAG1','PLAGL1','PLAU','PLCB3','PLCB4','PLCZ1','PLD1','PLEC','PLEKHG4','PLEKHG5','PLEKHM1','PLG','PLIN1','PLK4','PLN','PLOD1','PLOD2','PLOD3','PLP1','PLVAP','PLXND1','PMFBP1','PML','PMM2','PMP2','PMP22','PMPCA','PMS1','PMS2','PNKP','PNLDC1','PNP','PNPLA1','PNPLA2','PNPLA6','PNPT1','POC1A','PODXL','POF1B','POFUT1','POGLUT1','POGZ','POLA1','POLD1','POLE','POLG','POLG2','POLR1A','POLR1B','POLR1C','POLR1D','POLR2A','POLR3A','POLR3B','POLR3GL','POLR3H','POLR3K','POMGNT1','POMGNT2','POMK','POMP','POMT1','POMT2','POP1','POPDC3','POR','PORCN','POU1F1','POU3F3','POU3F4','PPARG','PPCS','PPIB','PPM1B','PPM1D','PPOX','PPP1CB','PPP1R12A','PPP1R15B','PPP1R21','PPP2CA','PPP2R1A','PPP2R3C','PPP2R5D','PPP3CA','PQBP1','PRCD','PRDM16','PRDM5','PRDX1','PREPL','PRG4','PRKACA','PRKACB','PRKACG','PRKAR1A','PRKCD','PRKCG','PRKCZ','PRKD1','PRKDC','PRKG1','PRKG2','PRKN','PRLR','PRMT7','PRNP','PROC','PROK2','PROKR2','PROM1','PROP1','PRPF3','PRPF31','PRPF4','PRPF6','PRPF8','PRPH2','PRPS1','PRR12','PRRT2','PRRX1','PRSS56','PRTN3','PRUNE1','PRX','PRY','PRY2','PSAP','PSAT1','PSEN1','PSEN2','PSENEN','PSMB4','PSMB8','PSMB9','PSMC3','PSMC3IP','PSMD12','PSPH','PSTPIP1','PTCH1','PTCH2','PTCHD1','PTDSS1','PTEN','PTF1A','PTH1R','PTHLH','PTPN11','PTPN12','PTPN2','PTPN22','PTPN23','PTPRF','PTPRJ','PTRH2','PUF60','PUM1','PURA','PUS3','PUS7','PWAR1','PWRN1','PXDN','PYCR1','PYCR2','PYROXD1','QARS1','QRICH1','QRICH2','RAB11B','RAB18','RAB23','RAB33B','RAB39B','RAB3GAP1','RAB3GAP2','RAB7A','RABL3','RAC1','RAC3','RAD21','RAD50','RAD51','RAD51C','RAD51D','RAD54B','RAF1','RAG1','RAG2','RAI1','RALA','RALGAPA1','RAPSN','RARA','RARB','RARS1','RASA1','RASA2','RASGRP1','RAX','RB1','RBBP8','RBM10','RBM20','RBM28','RBM8A','RBMX','RBMY1A1','RBP3','RBP4','RBPJ','RCBTB1','RD3','RDH11','RDH12','REC114','RECQL4','REEP1','REEP2','REEP6','RELA','RELN','REN','REPS1','RERE','RET','RETREG1','REV3L','RFC2','RFT1','RFWD3','RGR','RHBDF2','RHO','RHOA','RHOBTB2','RIC1','RIN2','RINT1','RIPK4','RIPPLY2','RIT1','RLBP1','RLIM','RMRP','RNASEH1','RNASEH2A','RNASEH2B','RNASEH2C','RNASEL','RNF113A','RNF125','RNF13','RNF135','RNF2','RNF212','RNF216','RNF43','RNF6','RNU4ATAC','RNU7-1','ROBO1','ROBO4','ROGDI','ROM1','ROR2','RORA','RP1','RP1L1','RP2','RP9','RPE65','RPGR','RPGRIP1','RPGRIP1L','RPL10','RPL11','RPL13','RPL15','RPL18','RPL26','RPL27','RPL31','RPL35','RPL35A','RPL3L','RPL5','RPS10','RPS15A','RPS17','RPS19','RPS20','RPS23','RPS24','RPS26','RPS27','RPS28','RPS29','RPS4Y2','RPS6KA3','RPS7','RRAS','RRAS2','RREB1','RRM2B','RSPH1','RSPH3','RSPH4A','RSPH9','RSPO1','RSPO2','RSPRY1','RTEL1','RTL1','RTN2','RTTN','RUBCN','RUNX2','RUSC2','RXYLT1','RYR1','SACS','SAG','SALL1','SALL4','SAMD9','SAMD9L','SAMHD1','SARDH','SARS1','SASH1','SATB1','SATB2','SBDS','SBF1','SBF2','SC5D','SCAPER','SCARB2','SCARF2','SCN1A','SCN1B','SCN2A','SCN3A','SCN4A','SCN5A','SCN8A','SCN9A','SCNN1A','SCNN1B','SCNN1G','SCO2','SCP2','SCUBE3','SCYL1','SCYL2','SDCCAG8','SDHA','SDHAF1','SDHB','SDHC','SDHD','SDR9C7','SEC23A','SEC23B','SEC24C','SEC24D','SEC31A','SECISBP2','SELENOI','SELENON','SEM1','SEMA3A','SEMA3C','SEMA3D','SEMA3E','SEMA4A','SEMA4D','SEMA5A','SEPSECS','SEPTIN12','SEPTIN9','SERPINA12','SERPINB7','SERPINE1','SERPINF1','SERPINH1','SET','SETBP1','SETD1A','SETD1B','SETD2','SETD5','SETX','SF3B4','SFRP4','SFTPA1','SFTPA2','SFTPB','SFTPC','SGCA','SGCB','SGCD','SGCG','SGMS2','SGO1','SGPL1','SGSH','SH2B1','SH3PXD2B','SH3TC2','SHANK3','SHH','SHMT2','SHOC2','SHOX','SHROOM4','SIAH1','SIGMAR1','SIK1','SIK3','SIL1','SIM1','SIN3A','SIN3B','SIX1','SIX3','SIX5','SIX6','SKI','SKIV2L','SLC10A7','SLC12A2','SLC12A6','SLC13A5','SLC16A2','SLC17A5','SLC18A2','SLC18A3','SLC19A2','SLC19A3','SLC1A2','SLC1A3','SLC1A4','SLC22A4','SLC25A1','SLC25A10','SLC25A13','SLC25A19','SLC25A21','SLC25A22','SLC25A24','SLC25A4','SLC25A46','SLC26A2','SLC26A8','SLC29A3','SLC2A1','SLC2A10','SLC2A2','SLC2A3','SLC30A9','SLC33A1','SLC34A1','SLC34A2','SLC34A3','SLC35A1','SLC35A2','SLC35A3','SLC35C1','SLC35D1','SLC37A4','SLC38A8','SLC39A13','SLC39A14','SLC39A4','SLC39A8','SLC3A1','SLC40A1','SLC52A2','SLC52A3','SLC5A5','SLC5A6','SLC5A7','SLC6A1','SLC6A17','SLC6A3','SLC6A5','SLC6A8','SLC6A9','SLC7A14','SLC9A6','SLC9A7','SLCO2A1','SLFN14','SLURP1','SLX4','SMAD2','SMAD3','SMAD4','SMAD6','SMARCA2','SMARCA4','SMARCAD1','SMARCAL1','SMARCB1','SMARCC2','SMARCD1','SMARCD2','SMARCE1','SMC1A','SMC3','SMCHD1','SMG8','SMG9','SMN1','SMN2','SMO','SMOC1','SMPD4','SMS','SNAP25','SNAP29','SNCA','SNIP1','SNORD115-1','SNORD116-1','SNRNP200','SNRPB','SNRPN','SNX10','SNX14','SOD1','SOHLH1','SON','SORD','SOS 1','SOS 2','SOS1','SOS2','SOST','SOX10','SOX11','SOX18','SOX2','SOX3','SOX4','SOX5','SOX6','SOX9','SP7','SPAG1','SPAG17','SPARC','SPART','SPAST','SPATA16','SPATA5','SPATA7','SPECC1L','SPEF2','SPEG','SPEN','SPG11','SPG21','SPG7','SPIDR','SPINK2','SPINT2','SPOP','SPR','SPRED1','SPRED2','SPRTN','SPRY4','SPTBN1','SPTBN4','SPTLC1','SPTLC2','SQSTM1','SRA1','SRC','SRCAP','SRD5A2','SRD5A3','SREBF1','SRP54','SRPX2','SRY','SSR4','ST3GAL5','STAC3','STAG1','STAG2','STAG3','STAMBP','STAR','STAT1','STAT3','STAT4','STAT5B','STAT6','STEAP3','STEEP1','STIL','STIM1','STK11','STK36','STK4','STN 1.00','STN1','STOX1','STRA6','STRADA','STRC','STS','STT3A','STT3B','STUB1','STX16','STX1A','STX1B','STXBP1','SUCLG1','SUFU','SULT2B1','SUMF1','SUMO1','SUN5','SUPT16H','SURF1','SUZ12','SVBP','SVIL','SYCE1','SYCP2','SYCP3','SYNCRIP','SYNE1','SYNE2','SYNGAP1','SYNJ1','SYP','SYT1','SYT2','SZT2','TAB2','TAC3','TACO1','TACR3','TAF1','TAF1A','TAF2','TAF4B','TAF6','TAFAZZIN','TALDO1','TANC2','TAOK1','TAPT1','TARS1','TARS2','TASP1','TAT','TBC1D20','TBC1D23','TBC1D24','TBC1D2B','TBC1D7','TBCD','TBCE','TBCK','TBL1X','TBL1XR1','TBL2','TBR1','TBX1','TBX15','TBX2','TBX20','TBX22','TBX3','TBX4','TBX5','TBX6','TBXAS1','TBXT','TCAP','TCF12','TCF20','TCF4','TCF7L2','TCIRG1','TCOF1','TCTN1','TCTN2','TCTN3','TDGF1','TDP1','TDRD9','TELO2','TENM3','TENT5A','TERB1','TERB2','TERC','TERT','TET3','TEX11','TEX14','TEX15','TFAP2A','TFAP2B','TFE3','TFG','TFR2','TG','TGDS','TGFB1','TGFB2','TGFB3','TGFBR1','TGFBR2','TGIF1','TGM1','TGM5','TH','THOC2','THOC6','THRA','TIA1','TIE1','TIMM22','TIMM8A','TINF2','TK2','TKFC','TKT','TLE6','TLK2','TLL1','TLR2','TLR4','TMCO1','TMEM107','TMEM138','TMEM165','TMEM216','TMEM218','TMEM222','TMEM231','TMEM237','TMEM251','TMEM260','TMEM270','TMEM38B','TMEM43','TMEM63A','TMEM67','TMEM70','TMEM94','TMEM98','TMPO','TMTC3','TNFAIP3','TNFRSF11A','TNFRSF11B','TNFRSF1A','TNFRSF1B','TNFSF11','TNNC1','TNNI2','TNNI3','TNNT2','TNNT3','TNPO2','TNPO3','TNR','TNRC6B','TNXB','TOE1','TOGARAM1','TONSL','TOPORS','TOR1A','TOR1AIP1','TP53','TP53RK','TP63','TPM1','TPM2','TPM3','TPO','TPRKB','TRAF3IP1','TRAF3IP2','TRAF7','TRAIP','TRAK1','TRAPPC11','TRAPPC12','TRAPPC2','TRAPPC4','TRAPPC9','TREM2','TREX1','TRIM2','TRIM32','TRIM36','TRIM37','TRIM71','TRIM8','TRIO','TRIP11','TRIP12','TRIP13','TRIP4','TRMT1','TRMT10A','TRNE','TRNF','TRNH','TRNL1','TRNQ','TRNS1','TRNS2','TRNT1','TRNW','TRPM4','TRPS1','TRPV3','TRPV4','TRPV6','TRRAP','TSC1','TSC2','TSEN15','TSEN2','TSEN34','TSEN54','TSFM','TSGA10','TSHB','TSHR','TSPAN12','TSPAN7','TSPOAP1','TSPY1','TSPYL1','TSR2','TTC12','TTC21B','TTC26','TTC29','TTC37','TTC7A','TTC8','TTI2','TTN','TTPA','TTR','TUB','TUBB','TUBB2B','TUBB3','TUBB8','TUBG1','TUBGCP2','TUBGCP4','TUBGCP6','TULP1','TWIST1','TWIST2','TWNK','TXNDC15','TXNL4A','TXNRD2','TYMP','TYROBP','UBA1','UBA5','UBAC2','UBAP1','UBB','UBE2A','UBE2T','UBE3A','UBE3B','UBE4B','UBR1','UBR7','UBTF','UCHL1','UFD1','UFSP2','UGDH','UGP2','UGT1A1','UMPS','UNC45A','UNC45B','UNC80','UNG','UPB1','UPF3B','UQCC2','UQCRC2','UQCRFS1','UROS','USB1','USF3','USH2A','USP27X','USP45','USP7','USP8','USP9X','USP9Y','VAC14','VAMP1','VAMP7','VANGL1','VANGL2','VARS1','VAX1','VCL','VCP','VCY','VDR','VEGFC','VHL','VIPAS39','VLDLR','VMA21','VPS13A','VPS13B','VPS13C','VPS13D','VPS33A','VPS33B','VPS35L','VPS37A','VPS37D','VPS41','VPS4A','VPS51','VPS53','VRK1','VSX1','VSX2','VWA1','VWF','WAC','WARS1','WARS2','WAS','WASF1','WASHC5','WBP11','WDFY3','WDPCP','WDR11','WDR19','WDR26','WDR35','WDR37','WDR4','WDR48','WDR73','WDR81','WEE2','WFS1','WIPF1','WIPI2','WNK1','WNT1','WNT10A','WNT10B','WNT3','WNT4','WNT5A','WNT7A','WNT9B','WRAP53','WRN','WT1','WWOX','XPA','XPC','XRCC2','XRCC4','XYLT1','XYLT2','YAP1','YARS1','YME1L1','YRDC','YWHAE','YWHAG','YY1','YY1AP1','ZBTB16','ZBTB18','ZBTB20','ZBTB24','ZC4H2','ZDHHC9','ZEB2','ZFHX3','ZFHX4','ZFP57','ZFPM2','ZFTA','ZFYVE26','ZFYVE27','ZIC1','ZIC2','ZIC3','ZMIZ1','ZMPSTE24','ZMYM2','ZMYND10','ZMYND15','ZNF141','ZNF148','ZNF292','ZNF407','ZNF408','ZNF41','ZNF423','ZNF462','ZNF469','ZNF513','ZNF699','ZNF711','ZNF81','ZNHIT3','ZP1','ZP2','ZP3','ZPR1','ZSWIM6')
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