#Sep 26, 2023

#Sister species table
getwd()
library(foreach)
#install.packages("phytools")
library(phytools)
library(maps)
library(phangorn)
library(phylotools)
#Read fasta files of placed co1 on the bb tree
R_co1_20_1=read.fasta(file = "CO1_20_1.fasta")
R_co1_20_2=read.fasta(file = "CO1_20_2.fasta")
R_co1_20_3=read.fasta(file = "CO1_20_3.fasta")
R_co1_20_4=read.fasta(file = "CO1_20_4.fasta")
R_co1_20_5=read.fasta(file = "CO1_20_5.fasta")
R_co1_20_6=read.fasta(file = "CO1_20_6.fasta")
R_co1_20_7=read.fasta(file = "CO1_20_7.fasta")
R_co1_20_8=read.fasta(file = "CO1_20_8.fasta")
R_co1_20_9=read.fasta(file = "CO1_20_9.fasta")
R_co1_20_10=read.fasta(file = "CO1_20_10.fasta")
R_co1_40_1=read.fasta(file = "CO1_40_1.fasta")
R_co1_40_2=read.fasta(file = "CO1_40_2.fasta")
R_co1_40_3=read.fasta(file = "CO1_40_3.fasta")
R_co1_40_4=read.fasta(file = "CO1_40_4.fasta")
R_co1_40_5=read.fasta(file = "CO1_40_5.fasta")
R_co1_40_6=read.fasta(file = "CO1_40_6.fasta")
R_co1_40_7=read.fasta(file = "CO1_40_7.fasta")
R_co1_40_8=read.fasta(file = "CO1_40_8.fasta")
R_co1_40_9=read.fasta(file = "CO1_40_9.fasta")
R_co1_40_10=read.fasta(file = "CO1_40_10.fasta")
R_co1_60_1=read.fasta(file = "CO1_60_1.fasta")
R_co1_60_2=read.fasta(file = "CO1_60_2.fasta")
R_co1_60_3=read.fasta(file = "CO1_60_3.fasta")
R_co1_60_4=read.fasta(file = "CO1_60_4.fasta")
R_co1_60_5=read.fasta(file = "CO1_60_5.fasta")
R_co1_60_6=read.fasta(file = "CO1_60_6.fasta")
R_co1_60_7=read.fasta(file = "CO1_60_7.fasta")
R_co1_60_8=read.fasta(file = "CO1_60_8.fasta")
R_co1_60_9=read.fasta(file = "CO1_60_9.fasta")
R_co1_60_10=read.fasta(file = "CO1_60_10.fasta")
R_co1_80_1=read.fasta(file = "CO1_80_1.fasta")
R_co1_80_2=read.fasta(file = "CO1_80_2.fasta")
R_co1_80_3=read.fasta(file = "CO1_80_3.fasta")
R_co1_80_4=read.fasta(file = "CO1_80_4.fasta")
R_co1_80_5=read.fasta(file = "CO1_80_5.fasta")
R_co1_80_6=read.fasta(file = "CO1_80_6.fasta")
R_co1_80_7=read.fasta(file = "CO1_80_7.fasta")
R_co1_80_8=read.fasta(file = "CO1_80_8.fasta")
R_co1_80_9=read.fasta(file = "CO1_80_9.fasta")
R_co1_80_10=read.fasta(file = "CO1_80_10.fasta")
#read the refernce tree
ReferenceTree <- read.tree("RAxML_bestTree.FR100_new")
#Read the 40 trees generated using App-spam Random samples
R20_1_tree<-read.tree("R20_1.nwk")
R20_2_tree<-read.tree("R20_2.nwk")
R20_3_tree<-read.tree("R20_3.nwk")
R20_4_tree<-read.tree("R20_4.nwk")
R20_5_tree<-read.tree("R20_5.nwk")
R20_6_tree<-read.tree("R20_6.nwk")
R20_7_tree<-read.tree("R20_7.nwk")
R20_8_tree<-read.tree("R20_8.nwk")
R20_9_tree<-read.tree("R20_9.nwk")
R20_10_tree<-read.tree("R20_10.nwk")
R40_1_tree<-read.tree("R40_1.nwk")
R40_2_tree<-read.tree("R40_2.nwk")
R40_3_tree<-read.tree("R40_3.nwk")
R40_4_tree<-read.tree("R40_4.nwk")
R40_5_tree<-read.tree("R40_5.nwk")
R40_6_tree<-read.tree("R40_6.nwk")
R40_7_tree<-read.tree("R40_7.nwk")
R40_8_tree<-read.tree("R40_8.nwk")
R40_9_tree<-read.tree("R40_9.nwk")
R40_10_tree<-read.tree("R40_10.nwk")
R60_1_tree<-read.tree("R60_1.nwk")
R60_2_tree<-read.tree("R60_2.nwk")
R60_3_tree<-read.tree("R60_3.nwk")
R60_4_tree<-read.tree("R60_4.nwk")
R60_5_tree<-read.tree("R60_5.nwk")
R60_6_tree<-read.tree("R60_6.nwk")
R60_7_tree<-read.tree("R60_7.nwk")
R60_8_tree<-read.tree("R60_8.nwk")
R60_9_tree<-read.tree("R60_9.nwk")
R60_10_tree<-read.tree("R60_10.nwk")
R80_1_tree<-read.tree("R80_1.nwk")
R80_2_tree<-read.tree("R80_2.nwk")
R80_3_tree<-read.tree("R80_3.nwk")
R80_4_tree<-read.tree("R80_4.nwk")
R80_5_tree<-read.tree("R80_5.nwk")
R80_6_tree<-read.tree("R80_6.nwk")
R80_7_tree<-read.tree("R80_7.nwk")
R80_8_tree<-read.tree("R80_8.nwk")
R80_9_tree<-read.tree("R80_9.nwk")
R80_10_tree<-read.tree("R80_10.nwk")


#------
R_co1_20_1_species <- R_co1_20_1$seq.name
R_co1_20_2_species <- R_co1_20_2$seq.name
R_co1_20_3_species <- R_co1_20_3$seq.name
R_co1_20_4_species <- R_co1_20_4$seq.name
R_co1_20_5_species <- R_co1_20_5$seq.name
R_co1_20_6_species <- R_co1_20_6$seq.name
R_co1_20_7_species <- R_co1_20_7$seq.name
R_co1_20_8_species <- R_co1_20_8$seq.name
R_co1_20_9_species <- R_co1_20_9$seq.name
R_co1_20_10_species <- R_co1_20_10$seq.name
R_co1_40_1_species <- R_co1_40_1$seq.name
R_co1_40_2_species <- R_co1_40_2$seq.name
R_co1_40_3_species <- R_co1_40_3$seq.name
R_co1_40_4_species <- R_co1_40_4$seq.name
R_co1_40_5_species <- R_co1_40_5$seq.name
R_co1_40_6_species <- R_co1_40_6$seq.name
R_co1_40_7_species <- R_co1_40_7$seq.name
R_co1_40_8_species <- R_co1_40_8$seq.name
R_co1_40_9_species <- R_co1_40_9$seq.name
R_co1_40_10_species <- R_co1_40_10$seq.name
R_co1_60_1_species <- R_co1_60_1$seq.name
R_co1_60_2_species <- R_co1_60_2$seq.name
R_co1_60_3_species <- R_co1_60_3$seq.name
R_co1_60_4_species <- R_co1_60_4$seq.name
R_co1_60_5_species <- R_co1_60_5$seq.name
R_co1_60_6_species <- R_co1_60_6$seq.name
R_co1_60_7_species <- R_co1_60_7$seq.name
R_co1_60_8_species <- R_co1_60_8$seq.name
R_co1_60_9_species <- R_co1_60_9$seq.name
R_co1_60_10_species <- R_co1_60_10$seq.name
R_co1_80_1_species <- R_co1_80_1$seq.name
R_co1_80_2_species <- R_co1_80_2$seq.name
R_co1_80_3_species <- R_co1_80_3$seq.name
R_co1_80_4_species <- R_co1_80_4$seq.name
R_co1_80_5_species <- R_co1_80_5$seq.name
R_co1_80_6_species <- R_co1_80_6$seq.name
R_co1_80_7_species <- R_co1_80_7$seq.name
R_co1_80_8_species <- R_co1_80_8$seq.name
R_co1_80_9_species <- R_co1_80_9$seq.name
R_co1_80_10_species <- R_co1_80_10$seq.name

#bb 80% tree when placed 20% co1
RefTree_R_co1_20_1_List <- foreach(i=1:length(R_co1_20_1_species)) %do% getSisters(ReferenceTree,R_co1_20_1_species[i],mode="label")
R_80_co1_20_1_List <- foreach(i=1:length(R_co1_20_1_species)) %do% getSisters(R80_1_tree,R_co1_20_1_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_1_List [(RefTree_R_co1_20_1_List %in% R_80_co1_20_1_List )] #420
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_1_List [!(RefTree_R_co1_20_1_List %in% R_80_co1_20_1_List)] #484

RefTree_R_co1_20_2_List <- foreach(i=1:length(R_co1_20_2_species)) %do% getSisters(ReferenceTree,R_co1_20_2_species[i],mode="label")
R_80_co1_20_2_List <- foreach(i=1:length(R_co1_20_2_species)) %do% getSisters(R80_2_tree,R_co1_20_2_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_2_List [(RefTree_R_co1_20_2_List %in% R_80_co1_20_2_List )] #154
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_2_List [!(RefTree_R_co1_20_2_List %in% R_80_co1_20_2_List)] #750

RefTree_R_co1_20_3_List <- foreach(i=1:length(R_co1_20_3_species)) %do% getSisters(ReferenceTree,R_co1_20_3_species[i],mode="label")
R_80_co1_20_3_List <- foreach(i=1:length(R_co1_20_3_species)) %do% getSisters(R80_3_tree,R_co1_20_3_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_3_List [(RefTree_R_co1_20_3_List %in% R_80_co1_20_3_List )] #434
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_3_List [!(RefTree_R_co1_20_3_List %in% R_80_co1_20_3_List)] #470

RefTree_R_co1_20_4_List <- foreach(i=1:length(R_co1_20_4_species)) %do% getSisters(ReferenceTree,R_co1_20_4_species[i],mode="label")
R_80_co1_20_4_List <- foreach(i=1:length(R_co1_20_4_species)) %do% getSisters(R80_4_tree,R_co1_20_4_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_4_List [(RefTree_R_co1_20_4_List %in% R_80_co1_20_4_List )] #137
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_4_List [!(RefTree_R_co1_20_4_List %in% R_80_co1_20_4_List)] #767

RefTree_R_co1_20_5_List <- foreach(i=1:length(R_co1_20_5_species)) %do% getSisters(ReferenceTree,R_co1_20_5_species[i],mode="label")
R_80_co1_20_5_List <- foreach(i=1:length(R_co1_20_5_species)) %do% getSisters(R80_5_tree,R_co1_20_5_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_5_List [(RefTree_R_co1_20_5_List %in% R_80_co1_20_5_List )] #141
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_5_List [!(RefTree_R_co1_20_5_List %in% R_80_co1_20_5_List)] #763

RefTree_R_co1_20_6_List <- foreach(i=1:length(R_co1_20_6_species)) %do% getSisters(ReferenceTree,R_co1_20_6_species[i],mode="label")
R_80_co1_20_6_List <- foreach(i=1:length(R_co1_20_6_species)) %do% getSisters(R80_6_tree,R_co1_20_6_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_6_List [(RefTree_R_co1_20_6_List %in% R_80_co1_20_6_List )] #146
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_6_List [!(RefTree_R_co1_20_6_List %in% R_80_co1_20_6_List)] #758

RefTree_R_co1_20_7_List <- foreach(i=1:length(R_co1_20_7_species)) %do% getSisters(ReferenceTree,R_co1_20_7_species[i],mode="label")
R_80_co1_20_7_List <- foreach(i=1:length(R_co1_20_7_species)) %do% getSisters(R80_7_tree,R_co1_20_7_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_7_List [(RefTree_R_co1_20_7_List %in% R_80_co1_20_7_List )] #422
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_7_List [!(RefTree_R_co1_20_7_List %in% R_80_co1_20_7_List)] #482

RefTree_R_co1_20_8_List <- foreach(i=1:length(R_co1_20_8_species)) %do% getSisters(ReferenceTree,R_co1_20_8_species[i],mode="label")
R_80_co1_20_8_List <- foreach(i=1:length(R_co1_20_8_species)) %do% getSisters(R80_8_tree,R_co1_20_8_species[i],mode="label")


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_8_List [(RefTree_R_co1_20_8_List %in% R_80_co1_20_8_List )] #140
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_8_List [!(RefTree_R_co1_20_8_List %in% R_80_co1_20_8_List)] #764

RefTree_R_co1_20_9_List <- foreach(i=1:length(R_co1_20_9_species)) %do% getSisters(ReferenceTree,R_co1_20_9_species[i],mode="label")
R_80_co1_20_9_List <- foreach(i=1:length(R_co1_20_9_species)) %do% getSisters(R80_9_tree,R_co1_20_9_species[i],mode="label")


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_9_List [(RefTree_R_co1_20_9_List %in% R_80_co1_20_9_List )] #421
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_9_List [!(RefTree_R_co1_20_9_List %in% R_80_co1_20_9_List)] #483

RefTree_R_co1_20_10_List <- foreach(i=1:length(R_co1_20_10_species)) %do% getSisters(ReferenceTree,R_co1_20_10_species[i],mode="label")
R_80_co1_20_10_List <- foreach(i=1:length(R_co1_20_10_species)) %do% getSisters(R80_10_tree,R_co1_20_10_species[i],mode="label")


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_10_List [(RefTree_R_co1_20_10_List %in% R_80_co1_20_10_List )] #141
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_10_List [!(RefTree_R_co1_20_10_List %in% R_80_co1_20_10_List)] #763

#bb 60% tree when placed 40% co1
RefTree_R_co1_40_1_List <- foreach(i=1:length(R_co1_40_1_species)) %do% getSisters(ReferenceTree,R_co1_40_1_species[i],mode="label")
R_60_co1_40_1_List <- foreach(i=1:length(R_co1_40_1_species)) %do% getSisters(R60_1_tree,R_co1_40_1_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_1_List [(RefTree_R_co1_40_1_List %in% R_60_co1_40_1_List )] #245
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_1_List [!(RefTree_R_co1_40_1_List %in% R_60_co1_40_1_List )] #1563

RefTree_R_co1_40_2_List <- foreach(i=1:length(R_co1_40_2_species)) %do% getSisters(ReferenceTree,R_co1_40_2_species[i],mode="label")
R_60_co1_40_2_List <- foreach(i=1:length(R_co1_40_2_species)) %do% getSisters(R60_2_tree,R_co1_40_2_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_2_List [(RefTree_R_co1_40_2_List %in% R_60_co1_40_2_List )] #251
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_2_List [!(RefTree_R_co1_40_2_List %in% R_60_co1_40_2_List )] #1557

RefTree_R_co1_40_3_List <- foreach(i=1:length(R_co1_40_3_species)) %do% getSisters(ReferenceTree,R_co1_40_3_species[i],mode="label")
R_60_co1_40_3_List <- foreach(i=1:length(R_co1_40_3_species)) %do% getSisters(R60_3_tree,R_co1_40_3_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_3_List [(RefTree_R_co1_40_3_List %in% R_60_co1_40_3_List )] #226
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_3_List [!(RefTree_R_co1_40_3_List %in% R_60_co1_40_3_List )] #1582

RefTree_R_co1_40_4_List <- foreach(i=1:length(R_co1_40_4_species)) %do% getSisters(ReferenceTree,R_co1_40_4_species[i],mode="label")
R_60_co1_40_4_List <- foreach(i=1:length(R_co1_40_4_species)) %do% getSisters(R60_4_tree,R_co1_40_4_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_4_List [(RefTree_R_co1_40_4_List %in% R_60_co1_40_4_List )] #617
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_4_List [!(RefTree_R_co1_40_4_List %in% R_60_co1_40_4_List )] #1191

RefTree_R_co1_40_5_List <- foreach(i=1:length(R_co1_40_5_species)) %do% getSisters(ReferenceTree,R_co1_40_5_species[i],mode="label")
R_60_co1_40_5_List <- foreach(i=1:length(R_co1_40_5_species)) %do% getSisters(R60_5_tree,R_co1_40_5_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_5_List [(RefTree_R_co1_40_5_List %in% R_60_co1_40_5_List )] #241
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_5_List [!(RefTree_R_co1_40_5_List %in% R_60_co1_40_5_List )] #1567

RefTree_R_co1_40_6_List <- foreach(i=1:length(R_co1_40_6_species)) %do% getSisters(ReferenceTree,R_co1_40_6_species[i],mode="label")
R_60_co1_40_6_List <- foreach(i=1:length(R_co1_40_6_species)) %do% getSisters(R60_6_tree,R_co1_40_6_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_6_List [(RefTree_R_co1_40_6_List %in% R_60_co1_40_6_List )] #639
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_6_List [!(RefTree_R_co1_40_6_List %in% R_60_co1_40_6_List )] #1169

RefTree_R_co1_40_7_List <- foreach(i=1:length(R_co1_40_7_species)) %do% getSisters(ReferenceTree,R_co1_40_7_species[i],mode="label")
R_60_co1_40_7_List <- foreach(i=1:length(R_co1_40_7_species)) %do% getSisters(R60_7_tree,R_co1_40_7_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_7_List [(RefTree_R_co1_40_7_List %in% R_60_co1_40_7_List )] #611
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_7_List [!(RefTree_R_co1_40_7_List %in% R_60_co1_40_7_List )] #1197

RefTree_R_co1_40_8_List <- foreach(i=1:length(R_co1_40_8_species)) %do% getSisters(ReferenceTree,R_co1_40_8_species[i],mode="label")
R_60_co1_40_8_List <- foreach(i=1:length(R_co1_40_8_species)) %do% getSisters(R60_8_tree,R_co1_40_8_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_8_List [(RefTree_R_co1_40_8_List %in% R_60_co1_40_8_List )] #622
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_8_List [!(RefTree_R_co1_40_8_List %in% R_60_co1_40_8_List )] #1186

RefTree_R_co1_40_9_List <- foreach(i=1:length(R_co1_40_9_species)) %do% getSisters(ReferenceTree,R_co1_40_9_species[i],mode="label")
R_60_co1_40_9_List <- foreach(i=1:length(R_co1_40_9_species)) %do% getSisters(R60_9_tree,R_co1_40_9_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_9_List [(RefTree_R_co1_40_9_List %in% R_60_co1_40_9_List )] #592
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_9_List [!(RefTree_R_co1_40_9_List %in% R_60_co1_40_9_List )] #1216

RefTree_R_co1_40_10_List <- foreach(i=1:length(R_co1_40_10_species)) %do% getSisters(ReferenceTree,R_co1_40_10_species[i],mode="label")
R_60_co1_40_10_List <- foreach(i=1:length(R_co1_40_10_species)) %do% getSisters(R60_10_tree,R_co1_40_10_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_10_List [(RefTree_R_co1_40_10_List %in% R_60_co1_40_10_List )] #249
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_10_List [!(RefTree_R_co1_40_10_List %in% R_60_co1_40_10_List )] #1559

#RefTree_biasco1List[sapply(names(RefTree_biasco1List), function(x) !identical(RefTree_biasco1List[[x]], biasco1List[[x]]))] 

#bb 40% tree when placed 60% co1
RefTree_R_co1_60_1_List <- foreach(i=1:length(R_co1_60_1_species)) %do% getSisters(ReferenceTree,R_co1_60_1_species[i],mode="label")
R_40_co1_60_1_List <- foreach(i=1:length(R_co1_40_1_species)) %do% getSisters(R40_1_tree,R_co1_60_1_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_1_List [(RefTree_R_co1_60_1_List %in% R_40_co1_60_1_List )] #174
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_1_List [!(RefTree_R_co1_60_1_List %in% R_40_co1_60_1_List )] #2538

RefTree_R_co1_60_2_List <- foreach(i=1:length(R_co1_60_2_species)) %do% getSisters(ReferenceTree,R_co1_60_2_species[i],mode="label")
R_40_co1_60_2_List <- foreach(i=1:length(R_co1_40_2_species)) %do% getSisters(R40_2_tree,R_co1_60_2_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_2_List [(RefTree_R_co1_60_2_List %in% R_40_co1_60_2_List )] #190
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_2_List [!(RefTree_R_co1_60_2_List %in% R_40_co1_60_2_List )] #2522


RefTree_R_co1_60_3_List <- foreach(i=1:length(R_co1_60_3_species)) %do% getSisters(ReferenceTree,R_co1_60_3_species[i],mode="label")
R_40_co1_60_3_List <- foreach(i=1:length(R_co1_40_3_species)) %do% getSisters(R40_3_tree,R_co1_60_3_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_3_List [(RefTree_R_co1_60_3_List %in% R_40_co1_60_3_List )] #198
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_3_List [!(RefTree_R_co1_60_3_List %in% R_40_co1_60_3_List )] #2514

RefTree_R_co1_60_4_List <- foreach(i=1:length(R_co1_60_4_species)) %do% getSisters(ReferenceTree,R_co1_60_4_species[i],mode="label")
R_40_co1_60_4_List <- foreach(i=1:length(R_co1_40_4_species)) %do% getSisters(R40_4_tree,R_co1_60_4_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_4_List [(RefTree_R_co1_60_4_List %in% R_40_co1_60_4_List )] #186
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_4_List [!(RefTree_R_co1_60_4_List %in% R_40_co1_60_4_List )] #2526

RefTree_R_co1_60_5_List <- foreach(i=1:length(R_co1_60_5_species)) %do% getSisters(ReferenceTree,R_co1_60_5_species[i],mode="label")
R_40_co1_60_5_List <- foreach(i=1:length(R_co1_40_5_species)) %do% getSisters(R40_5_tree,R_co1_60_5_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_5_List [(RefTree_R_co1_60_5_List %in% R_40_co1_60_5_List )] #196
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_5_List [!(RefTree_R_co1_60_5_List %in% R_40_co1_60_5_List )] #2516

RefTree_R_co1_60_6_List <- foreach(i=1:length(R_co1_60_6_species)) %do% getSisters(ReferenceTree,R_co1_60_6_species[i],mode="label")
R_40_co1_60_6_List <- foreach(i=1:length(R_co1_40_6_species)) %do% getSisters(R40_6_tree,R_co1_60_6_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_6_List [(RefTree_R_co1_60_6_List %in% R_40_co1_60_6_List )] #190
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_6_List [!(RefTree_R_co1_60_6_List %in% R_40_co1_60_6_List )] #2522

RefTree_R_co1_60_7_List <- foreach(i=1:length(R_co1_60_7_species)) %do% getSisters(ReferenceTree,R_co1_60_7_species[i],mode="label")
R_40_co1_60_7_List <- foreach(i=1:length(R_co1_40_7_species)) %do% getSisters(R40_7_tree,R_co1_60_7_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_7_List [(RefTree_R_co1_60_7_List %in% R_40_co1_60_7_List )] #198
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_7_List [!(RefTree_R_co1_60_7_List %in% R_40_co1_60_7_List )] #2514

RefTree_R_co1_60_8_List <- foreach(i=1:length(R_co1_60_8_species)) %do% getSisters(ReferenceTree,R_co1_60_8_species[i],mode="label")
R_40_co1_60_8_List <- foreach(i=1:length(R_co1_40_8_species)) %do% getSisters(R40_8_tree,R_co1_60_8_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_8_List [(RefTree_R_co1_60_8_List %in% R_40_co1_60_8_List )] #181
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_8_List [!(RefTree_R_co1_60_8_List %in% R_40_co1_60_8_List )] #2531

RefTree_R_co1_60_9_List <- foreach(i=1:length(R_co1_60_9_species)) %do% getSisters(ReferenceTree,R_co1_60_9_species[i],mode="label")
R_40_co1_60_9_List <- foreach(i=1:length(R_co1_40_9_species)) %do% getSisters(R40_9_tree,R_co1_60_9_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_9_List [(RefTree_R_co1_60_9_List %in% R_40_co1_60_9_List )] #186
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_9_List [!(RefTree_R_co1_60_9_List %in% R_40_co1_60_9_List )] #2526

RefTree_R_co1_60_10_List <- foreach(i=1:length(R_co1_60_10_species)) %do% getSisters(ReferenceTree,R_co1_60_10_species[i],mode="label")
R_40_co1_60_10_List <- foreach(i=1:length(R_co1_40_10_species)) %do% getSisters(R40_10_tree,R_co1_60_10_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_10_List [(RefTree_R_co1_60_10_List %in% R_40_co1_60_10_List )] #183
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_10_List [!(RefTree_R_co1_60_10_List %in% R_40_co1_60_10_List )] #2529


#bb 20% tree when placed 80% co1
RefTree_R_co1_80_1_List <- foreach(i=1:length(R_co1_80_1_species)) %do% getSisters(ReferenceTree,R_co1_80_1_species[i],mode="label")
R_20_co1_80_1_List <- foreach(i=1:length(R_co1_80_1_species)) %do% getSisters(R20_1_tree,R_co1_80_1_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_1_List [(RefTree_R_co1_80_1_List %in% R_20_co1_80_1_List )] #227
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_1_List [!(RefTree_R_co1_80_1_List %in% R_20_co1_80_1_List )] #3389

RefTree_R_co1_80_2_List <- foreach(i=1:length(R_co1_80_2_species)) %do% getSisters(ReferenceTree,R_co1_80_2_species[i],mode="label")
R_20_co1_80_2_List <- foreach(i=1:length(R_co1_80_2_species)) %do% getSisters(R20_2_tree,R_co1_80_2_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_2_List [(RefTree_R_co1_80_2_List %in% R_20_co1_80_2_List )] #260
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_2_List [!(RefTree_R_co1_80_2_List %in% R_20_co1_80_2_List )] #3356

RefTree_R_co1_80_3_List <- foreach(i=1:length(R_co1_80_3_species)) %do% getSisters(ReferenceTree,R_co1_80_3_species[i],mode="label")
R_20_co1_80_3_List <- foreach(i=1:length(R_co1_80_3_species)) %do% getSisters(R20_3_tree,R_co1_80_3_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_3_List [(RefTree_R_co1_80_3_List %in% R_20_co1_80_3_List )] #245
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_3_List [!(RefTree_R_co1_80_3_List %in% R_20_co1_80_3_List )] #3371

RefTree_R_co1_80_4_List <- foreach(i=1:length(R_co1_80_4_species)) %do% getSisters(ReferenceTree,R_co1_80_4_species[i],mode="label")
R_20_co1_80_4_List <- foreach(i=1:length(R_co1_80_4_species)) %do% getSisters(R20_4_tree,R_co1_80_4_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_4_List [(RefTree_R_co1_80_4_List %in% R_20_co1_80_4_List )] #269
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_4_List [!(RefTree_R_co1_80_4_List %in% R_20_co1_80_4_List )] #3347

RefTree_R_co1_80_5_List <- foreach(i=1:length(R_co1_80_5_species)) %do% getSisters(ReferenceTree,R_co1_80_5_species[i],mode="label")
R_20_co1_80_5_List <- foreach(i=1:length(R_co1_80_5_species)) %do% getSisters(R20_5_tree,R_co1_80_5_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_5_List [(RefTree_R_co1_80_5_List %in% R_20_co1_80_5_List )] #257
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_5_List [!(RefTree_R_co1_80_5_List %in% R_20_co1_80_5_List )] #3359

RefTree_R_co1_80_6_List <- foreach(i=1:length(R_co1_80_6_species)) %do% getSisters(ReferenceTree,R_co1_80_6_species[i],mode="label")
R_20_co1_80_6_List <- foreach(i=1:length(R_co1_80_6_species)) %do% getSisters(R20_6_tree,R_co1_80_6_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_6_List [(RefTree_R_co1_80_6_List %in% R_20_co1_80_6_List )] #233
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_6_List [!(RefTree_R_co1_80_6_List %in% R_20_co1_80_6_List )] #3383

RefTree_R_co1_80_7_List <- foreach(i=1:length(R_co1_80_7_species)) %do% getSisters(ReferenceTree,R_co1_80_7_species[i],mode="label")
R_20_co1_80_7_List <- foreach(i=1:length(R_co1_80_7_species)) %do% getSisters(R20_7_tree,R_co1_80_7_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_7_List [(RefTree_R_co1_80_7_List %in% R_20_co1_80_7_List )] #239
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_7_List [!(RefTree_R_co1_80_7_List %in% R_20_co1_80_7_List )] #3377

RefTree_R_co1_80_8_List <- foreach(i=1:length(R_co1_80_8_species)) %do% getSisters(ReferenceTree,R_co1_80_8_species[i],mode="label")
R_20_co1_80_8_List <- foreach(i=1:length(R_co1_80_8_species)) %do% getSisters(R20_8_tree,R_co1_80_8_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_8_List [(RefTree_R_co1_80_8_List %in% R_20_co1_80_8_List )] #233
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_8_List [!(RefTree_R_co1_80_8_List %in% R_20_co1_80_8_List )] #3383

RefTree_R_co1_80_9_List <- foreach(i=1:length(R_co1_80_9_species)) %do% getSisters(ReferenceTree,R_co1_80_9_species[i],mode="label")
R_20_co1_80_9_List <- foreach(i=1:length(R_co1_80_9_species)) %do% getSisters(R20_9_tree,R_co1_80_9_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_9_List [(RefTree_R_co1_80_9_List %in% R_20_co1_80_9_List )] #243
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_9_List [!(RefTree_R_co1_80_9_List %in% R_20_co1_80_9_List )] #3373

RefTree_R_co1_80_10_List <- foreach(i=1:length(R_co1_80_10_species)) %do% getSisters(ReferenceTree,R_co1_80_10_species[i],mode="label")
R_20_co1_80_10_List <- foreach(i=1:length(R_co1_80_10_species)) %do% getSisters(R20_10_tree,R_co1_80_10_species[i],mode="label")

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_10_List [(RefTree_R_co1_80_10_List %in% R_20_co1_80_10_List )] #231
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_10_List [!(RefTree_R_co1_80_10_List %in% R_20_co1_80_10_List )] #3385
