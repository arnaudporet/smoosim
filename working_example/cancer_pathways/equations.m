Mutagen;#Mutagen (INPUT)
GFs;#GFs (INPUT)
Nutrients;#Nutrients (INPUT)
TNFalpha;#TNFalpha (INPUT)
Hypoxia;#Hypoxia (INPUT)
Gli;#Gli (INPUT)
HIF1>0;#TGFbeta
Mutagen+ROS>0;#DnaDamage
p53+Mdm2>1;#p53_Mdm2
-Nutrients>-1;#AMP_ATP
-PKC>-1;#NF1
RTK+WNT>0;#PKC
GFs>0;#RTK
Nutrients-Hypoxia>0;#RAGS
-NF1+RTK>-1;#Ras
Ras+hTERT>0;#PI3K
1;#PTEN
PI3K-PTEN-p53_PTEN>-1;#PIP3
PIP3+HIF1+Myc_Max>0;#PDK1
PKC+AKT+mTOR-PHDs-p53+TAK1>0;#IKK
PIP3+2*IKK-E_cadherin+Snail>1;#NFkappaB
PKC+Ras>0;#RAF
RAF>0;#ERK
PDK1+ERK>0;#p90
PIP3+PDK1>1;#AKT
-p53+Gli>0;#WNT
WNT>0;#Dsh
PTEN>-1;#APC
-p90-AKT-Dsh-mTOR>-3;#GSK3
APC+GSK3>1;#GSK3_APC
-GSK3_APC-p53>-1;#betaCatenin
-p53_Mdm2+NFkappaB+TCF>0;#Slug
RAGS+AKT+RHEB-AMPK>1;#mTOR
Hypoxia+mTOR-2*VHL-PHDs+Myc_Max-p53-FOXO>-2;#HIF1
HIF1>0;#COX412
-Hypoxia-ROS>-1;#VHL
-Hypoxia+ROS>-1;#PHDs
-TGFbeta+Myc+Max-MXI1-SmadE2F>1;#Myc_Max
NFkappaB+ERK-HIF1+E2F+FosJun+TCF+Gli>1;#Myc
1;#Max
HIF1>0;#MXI1
-RAF-ERK-p90-AKT+HIF1+p53+AMPK>-1;#TSC1_TSC2
-TSC1_TSC2>-1;#RHEB
HIF1-Bcl2-Mdm2+CHK1_2>-1;#p53
2*NFkappaB-p53-BAX-BAD>0;#Bcl2
-HIF1+p53-Bcl2+JNK>0;#BAX
-RAF-p90-AKT-HIF1>-1;#BAD
-p53-BAD>-1;#BclXL
-CycA-CycB-CycD-CycE-Mdm2>-2;#Rb
-2*Rb-CycA-CycB+E2F>-1;#E2F
Ras+Myc_Max+E2F>3;#p14
CycA-Rb-cdc20-p27-p21+E2F_CyclinE+cdh1_UbcH10>0;#CycA
-p53-cdh1-cdc20-p27-p21>-1;#CycB
NFkappaB-2*GSK3+Myc_Max-p27-p21-p15-FOXO+FosJun+TCF+Gli>0;#CycD
-Rb+E2F-CycA-p27-p21>0;#CycE
-CycA-CycB+cdc20>-1;#cdh1
CycB-cdh1>0;#cdc20
CycA+CycB-cdh1+cdc20+UbcH10>0;#UbcH10
-AKT+HIF1-Myc_Max-CycA-CycB-CycD+SmadMiz1>-1;#p27
-AKT+HIF1-Myc_Max+p53+SmadMiz1-hTERT>-1;#p21
AKT+p53-p14-ATM_ATR>-1;#Mdm2
TNFalpha+TGFbeta>0;#Smad
Smad+Miz1>1;#SmadMiz1
Smad>0;#SmadE2F
SmadMiz1+Miz1>0;#p15
TNFalpha>0;#FADD
FADD>0;#Caspase8
Caspase8>0;#Bak
TGFbeta>0;#JNK
-AKT>-2;#FOXO
ERK+JNK>0;#FosJun
-COX412-GSH>0;#ROS
-GFs+AMP_ATP+HIF1+ATM_ATR>-1;#AMPK
-AKT+p53-Bcl2+BAX-BclXL+Caspase8+Bak>0;#Cytoc_APAF1
Cytoc_APAF1>0;#Caspase9
Caspase8+Caspase9>0;#Apoptosis
-NFkappaB-Slug-Snail>-3;#E_cadherin
AKT+HIF1+Myc_Max>1;#Glut1
NF1+NFkappaB+AKT+HIF1+Myc_Max-p53-SmadMiz1-eEF2>4;#hTERT
HIF1+Myc_Max>0;#VEGF
E2F+CycE>1;#E2F_CyclinE
cdh1+UbcH10>1;#cdh1_UbcH10
TNFalpha>0;#TAK1
NFkappaB+Myc_Max+p21>0;#GSH
betaCatenin-TAK1>0;#TCF
-Myc_Max>-1;#Miz1
PDK1+mTOR>0;#p70
DnaDamage>0;#ATM_ATR
ATM_ATR>0;#CHK1_2
ATM_ATR>0;#DNARepair
p90+p70>0;#eEF2K
-eEF2K>-1;#eEF2
PTEN+p53>1;#p53_PTEN
HIF1+Myc_Max>1;#LDHA
LDHA>0;#Lactic_Acid
NFkappaB-GSK3-p53+Smad>1;#Snail