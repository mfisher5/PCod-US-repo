######================ R CODE FOR CREATING DAPC PLOTS ==================#####


## MF 4/5/2017 for US Cod data
## Based off of Charlie Waters' DAPC and PCA code 

# First set working directory
setwd("D:/Pacific cod/DataAnalysis/PCod-US-repo")

# Load all necessary R packages
library(ape)
library(ade4)
library(adegenet)
library(diveRsity)
library(doParallel)
library(foreach)
library(genetics)
library(hierfstat)
library(httpuv)
library(iterators)
library(sendplot)
library(xlsx)
library(pegas)
library(plotrix)

###################################################################################
# Let's first run a DAPC with all individuals and all loci

## read in genepop
USpcod <-read.genepop("stacks_wgenome/batch_1.filteredIndivids.filteredMAF_filteredLoci20p.gen")
summary(USpcod)

## note that there are 120 individuals in the file: POH = 28, GE15 = 33, NAM = 16, YS = 7, BOR = 3, GE14 = 32, SM = 1


Kodiak03 <- rep("KOD03",41)
Adak06 <- rep("AD06",31)
WashCoast05 <- rep("WC05",33)
HecateStrait04 <- rep("HS04",40)
PugetSound12 <- rep("PS12",41)
StraitofGeorgia13 <- rep("GS13",12)
PWSound12 <- rep("PWS12",24)
UnimakPass03 <- rep("UP03", 42)


pop_groups <- as.factor(c(rep("KOD03",41),rep("AD06",31),rep("WC05",33),rep("HS04",40),rep("PS12",41),rep("GS13",12), rep("PWS12",24), rep("UP03", 42)))
pop_labels <- c("Kodiak03", "Adak06", "WashCoast05", "HecateStrait04", "PugetSound12", "StraitofGeorgia13", "PWSound12", "UnimakPass03")
pop_cols <- c("aquamarine4","deepskyblue","darkorchid1","sienna2","chartreuse","darkgoldenrod", "deeppink4", "cyan")

## run dapc
dapc_all <- dapc(USpcod,USpcod$pop,n.pca=465,n.da=8) ##Retain all, then identify optimal number by optim.a.score
## find optimal number of principal components
test_a_score <- optim.a.score(dapc_all)
## run dapc only on optimal number of principal components
dapc_all <- dapc(USpcod,USpcod$pop,n.pca=25,n.da=8) ##21 PC's is the optimal number

#2D plot WITH ALL POPULATIONS
scatter(dapc_all,scree.da=FALSE,cellipse=0,leg=FALSE,label=c("KOD03","AD06","WC05","HS04","PS12","GS13", "PWS12","UP03"), posi.da="bottomleft",csub=2,col=pop_cols,cex=1.5,clabel=1,pch=c(19),solid=1)
legend(x = -7, y = -3.5,bty='n', legend = pop_labels,pch=c(19),col=pop_cols,cex=0.8)

#2D plot WITH CLUSTERING
test_snpzip<-snpzip(koreaL1L2,dapc_all,loading.plot=TRUE,method="median") 

############################################################################################################

## Run DAPC on all samples EXCEPT Yellow Sea and Boryeong. 

koreaL1L2_noYSBOR <-read.genepop("../L1L2stacks_m10/batch_1.filtered_MAF_MissingLoci_Individs_noYS_noBOR.gen")
summary(koreaL1L2_noYSBOR)
## note that there are 106 individuals in the file: POH = 27, GE15 = 32, NAM = 15, GE14 = 31, SM = 1

Pohang15 <- rep("POH",27)
Geoje15 <- rep("GE15",32)
Namhae15 <- rep("NAM",15)
Geoje14 <- rep("GE14",31)
SocMuk <- rep("SM",1)



pop_groups <- as.factor(c(rep("POH",27),rep("GE15",32),rep("NAM",15),rep("GE14",31),rep("SM",1)))
pop_labels <- c(Pohang15, Geoje15, Namhae15, Geoje14, SocMuk)
pop_cols <- c("aquamarine4","deepskyblue","darkorchid1","deepskyblue","black")

## run dapc
dapc_noYSBOR <- dapc(koreaL1L2_noYSBOR,koreaL1L2_noYSBOR$pop,n.pca=465,n.da=5) ##Retain all, then identify optimal number by optim.a.score
## find optimal number of principal components
test_a_score <- optim.a.score(dapc_noYSBOR)
## run dapc only on optimal number of principal components
dapc_noYSBOR <- dapc(koreaL1L2_noYSBOR,koreaL1L2_noYSBOR$pop,n.pca=71,n.da=5) ##71 PC's is the optimal number

#2D plot EXCLUDING YS, BORYEONG
scatter(dapc_noYSBOR,scree.da=FALSE,cellipse=0,leg=FALSE,label=c("POH","GE15","NAM","GE14","SM"), posi.da="bottomleft",csub=2,col=pop_cols,cex=1.5,clabel=1,pch=c(15,19,17,1,4),solid=1)
legend(x=4,y=4,bty='n', legend = c("Pohang `15", "Geoje `15", "Namhae `15", "Geoje `14", "Sokcho+Mukho `15-`16"),pch=c(15,19,17,1,4),col=pop_cols,cex=1.1)

#2D plot WITH CLUSTERING
test_snpzip<-snpzip(koreaL1L2_noYSBOR,dapc_noYSBOR,loading.plot=TRUE,method="median") 

###########################################################################################################

## Run DAPC on all samples EXCEPT Yellow Sea and Boryeong, with 300ng replicates parsed out as their OWN population

koreaL1L2_noYSBOR_300ng <-read.genepop("../L1L2stacks_m10/batch_1.filtered_MAF_MissingLoci_Individs_noYS_noBOR_300ng.gen")
summary(koreaL1L2_noYSBOR_300ng)
## note that there are 106 individuals in the file: POH = 27, GE15 = 32, NAM = 15, GE14 = 21, GE14_300 = 10, SM = 1

Pohang15 <- rep("POH",27)
Geoje15 <- rep("GE15",32)
Namhae15 <- rep("NAM",15)
Geoje14 <- rep("GE14",21)
Geoje14_300ng <- rep("GE14_300", 10)
SocMuk <- rep("SM",1)



pop_groups <- as.factor(c(rep("POH",27),rep("GE15",32),rep("NAM",15),rep("GE14",21),rep("GE14_300ng", 10), rep("SM",1)))
pop_labels <- c(Pohang15, Geoje15, Namhae15, Geoje14, Geoje14_300ng, SocMuk)
pop_cols <- c("aquamarine4","deepskyblue","darkorchid1","deepskyblue","dodgerblue3", "black")

## run dapc
dapc_noYSBOR_300ng <- dapc(koreaL1L2_noYSBOR_300ng,koreaL1L2_noYSBOR_300ng$pop,n.pca=465,n.da=6) ##Retain all, then identify optimal number by optim.a.score
## find optimal number of principal components
test_a_score <- optim.a.score(dapc_noYSBOR_300ng)
## run dapc only on optimal number of principal components
dapc_noYSBOR_300ng <- dapc(koreaL1L2_noYSBOR_300ng,koreaL1L2_noYSBOR_300ng$pop,n.pca=53,n.da=6) ##53 PC's is the optimal number

#2D plot EXCLUDING YS, BORYEONG
scatter(dapc_noYSBOR_300ng,scree.da=FALSE,cellipse=0,leg=FALSE,label=c("POH","GE15","NAM","GE14", "GE14_300ng","SM"), posi.da="bottomleft",csub=2,col=pop_cols,cex=1.5,clabel=1,pch=c(15,19,17,1,1,4),solid=1)
legend(x=3.5,y=4,bty='n', legend = c("Pohang `15", "Geoje `15", "Namhae `15", "Geoje `14", "Geoje `14 300ng", "Sokcho+Mukho `15-`16"),pch=c(15,19,17,1,1,4),col=pop_cols,cex=1.1)

#2D plot WITH CLUSTERING
test_snpzip<-snpzip(koreaL1L2_noYSBOR_300ng,dapc_noYSBOR_300ng,loading.plot=TRUE,method="median") 
############################################################################################################
###########################################################################################################

# MF 1/19/2017
#

## Run DAPC on all samples EXCEPT Yellow Sea, Boryeong, Mukho / Sokcho. 

koreaL1L2_noYSBOR <-read.genepop("../L1L2stacks_m10/DAPC/batch_1.filtered_MAF_MissingLoci20_Individs_noYBM.gen")
L1L2_noYBM <- koreaL1L2_noYSBOR
summary(L1L2_noYBM)
## note that there are 106 individuals in the file: POH = 27, GE15 = 32, NAM = 15, GE14 = 31, SM = 1

Pohang15 <- rep("POH",28)
Geoje15 <- rep("GE15",33)
Namhae15 <- rep("NAM",16)
Geoje14 <- rep("GE14",32)



pop_groups <- as.factor(c(rep("POH",28),rep("GE15",33),rep("NAM",16),rep("GE14",31)))
pop_labels <- c("Pohang15", "Geoje15", "Namhae15", "Geoje14")
pop_cols <- c("aquamarine4","deepskyblue","darkorchid1","dodgerblue3")

## run dapc
dapc_noYBM <- dapc(L1L2_noYBM,L1L2_noYBM$pop,n.pca=465,n.da=4) ##Retain all, then identify optimal number by optim.a.score
## find optimal number of principal components
test_a_score <- optim.a.score(dapc_noYBM) #optimal number of PCS - 32
## run dapc only on optimal number of principal components
dapc_noYBM <- dapc(L1L2_noYBM,L1L2_noYBM$pop,n.pca=32,n.da=4) ##71 PC's is the optimal number

#2D plot EXCLUDING YS, BORYEONG
scatter(dapc_noYBM,scree.da=FALSE,cellipse=0,leg=FALSE,label=c("POH","GE15","NAM","GE14"), posi.da="bottomleft",csub=2,col=pop_cols,cex=1.5,clabel=1,pch=c(15,19,17,1),solid=1)
legend(x=3,y=4,bty='n', legend = c("Pohang `15", "Geoje `15", "Namhae `15", "Geoje `14"),pch=c(15,19,17,1),col=pop_cols,cex=1.1)

#2D plot WITH CLUSTERING
test_snpzip<-snpzip(L1L2_noYBM,dapc_noYBM,loading.plot=TRUE,method="median") 

###########################################################################################################
## Run DAPC on all samples EXCEPT Yellow Sea, Boryeong, Mukho / Sokcho, 300 AS SEPARATE POPULATION

L1L2_noYBM_300 <-read.genepop("../L1L2stacks_m10/DAPC/batch_1_300.filtered_MAF_MissingLoci_Individs_noYBM.gen")
summary(L1L2_noYBM_300)
## note that there are 106 individuals in the file: POH = 27, GE15 = 32, NAM = 15, GE14 = 31, SM = 1

Pohang15 <- rep("POH",28)
Geoje15 <- rep("GE15",33)
Namhae15 <- rep("NAM",16)
Geoje14 <- rep("GE14",21)
Geoje14_300 <- rep("GE14_300",11)



pop_groups <- as.factor(c(rep("POH",28),rep("GE15",33),rep("NAM",16),rep("GE14",21),rep("GE14_300",11)))
pop_labels <- c("Pohang15", "Geoje15", "Namhae15", "Geoje14", "Geoje14_300")
pop_cols <- c("aquamarine4","deepskyblue","darkorchid1","black", "dodgerblue3")

## run dapc
dapc_noYBM_300 <- dapc(L1L2_noYBM_300,L1L2_noYBM_300$pop,n.pca=465,n.da=5) ##Retain all, then identify optimal number by optim.a.score
## find optimal number of principal components
test_a_score <- optim.a.score(dapc_noYBM_300) #optimal number of PCS - 20
## run dapc only on optimal number of principal components
dapc_noYBM_300 <- dapc(L1L2_noYBM_300,L1L2_noYBM_300$pop,n.pca=20,n.da=5) ##71 PC's is the optimal number

#2D plot EXCLUDING YS, BORYEONG
scatter(dapc_noYBM_300,scree.da=FALSE,cellipse=0,leg=FALSE,label=c("POH","GE15","NAM","GE14", "GE14_300"), posi.da="bottomleft",csub=2,col=pop_cols,cex=1.5,clabel=1,pch=c(15,19,17,1,1),solid=1)
legend(x=3,y=4,bty='n', legend = c("Pohang `15", "Geoje `15", "Namhae `15", "Geoje `14", "Geoje '14 - 300"),pch=c(15,19,17,1,1),col=pop_cols,cex=1.1)

#2D plot WITH CLUSTERING
test_snpzip<-snpzip(L1L2_noYBM_300,dapc_noYBM_300,loading.plot=TRUE,method="median") 

###########################################################################################################
## Run DAPC on all samples EXCEPT Yellow Sea, Boryeong, Mukho / Sokcho, 300 AS SEPARATE POPULATION. WITH <50% MISSING LOCI

L1L2_noYBM_300 <-read.genepop("../L1L2stacks_m10/DAPC/batch_1.filtered_MAF_MissingLoci_Individs_noYBM_300sep.gen")
summary(L1L2_noYBM_300)
## note that there are 106 individuals in the file: POH = 27, GE15 = 32, NAM = 15, GE14 = 31, SM = 1

Pohang15 <- rep("POH",28)
Geoje15 <- rep("GE15",33)
Namhae15 <- rep("NAM",16)
Geoje14 <- rep("GE14",21)
Geoje14_300 <- rep("GE14_300",11)



pop_groups <- as.factor(c(rep("POH",28),rep("GE15",33),rep("NAM",16),rep("GE14",21),rep("GE14_300",11)))
pop_labels <- c("Pohang15", "Geoje15", "Namhae15", "Geoje14", "Geoje14_300")
pop_cols <- c("aquamarine4","deepskyblue","darkorchid1","black", "dodgerblue3")

## run dapc
dapc_noYBM_300 <- dapc(L1L2_noYBM_300,L1L2_noYBM_300$pop,n.pca=465,n.da=5) ##Retain all, then identify optimal number by optim.a.score
## find optimal number of principal components
test_a_score <- optim.a.score(dapc_noYBM_300) #optimal number of PCS - 14
## run dapc only on optimal number of principal components
dapc_noYBM_300 <- dapc(L1L2_noYBM_300,L1L2_noYBM_300$pop,n.pca=14,n.da=5) ##71 PC's is the optimal number

#2D plot EXCLUDING YS, BORYEONG
scatter(dapc_noYBM_300,scree.da=FALSE,cellipse=0,leg=FALSE,label=c("POH","GE15","NAM","GE14", "GE14_300"), posi.da="bottomleft",csub=2,col=pop_cols,cex=1.5,clabel=1,pch=c(15,19,17,1,1),solid=1)
legend(x=3,y=4,bty='n', legend = c("Pohang `15", "Geoje `15", "Namhae `15", "Geoje `14", "Geoje '14 - 300"),pch=c(15,19,17,1,1),col=pop_cols,cex=1.1)

#2D plot WITH CLUSTERING
test_snpzip<-snpzip(L1L2_noYBM_300,dapc_noYBM_300,loading.plot=TRUE,method="median") 

###########################################################################################################
## Run DAPC on all samples EXCEPT Yellow Sea, Boryeong, Mukho / Sokcho, 300 AS SEPARATE POPULATION (DAPC only)
# Does dropping

L1L2_noYBM_300s <-read.genepop("../L1L2stacks_m10/DAPC/batch_1.filtered_MAF_MissingLoci20_Individs_noYBM_300sep.gen")
summary(L1L2_noYBM_300s)
## note that there are 106 individuals in the file: POH = 27, GE15 = 32, NAM = 15, GE14 = 31, SM = 1

Pohang15 <- rep("POH",28)
Geoje15 <- rep("GE15",33)
Namhae15 <- rep("NAM",16)
Geoje14 <- rep("GE14",21)
Geoje14_300 <- rep("GE14_300",11)



pop_groups <- as.factor(c(rep("POH",28),rep("GE15",33),rep("NAM",16),rep("GE14",21),rep("GE14_300",11)))
pop_labels <- c("Pohang15", "Geoje15", "Namhae15", "Geoje14", "Geoje14_300")
pop_cols <- c("aquamarine4","deepskyblue","darkorchid1","black", "dodgerblue3")

## run dapc
dapc_noYBM_300s <- dapc(L1L2_noYBM_300s,L1L2_noYBM_300s$pop,n.pca=465,n.da=5) ##Retain all, then identify optimal number by optim.a.score
## find optimal number of principal components
test_a_score <- optim.a.score(dapc_noYBM_300s) #optimal number of PCS - 15
## run dapc only on optimal number of principal components
dapc_noYBM_300s <- dapc(L1L2_noYBM_300s,L1L2_noYBM_300s$pop,n.pca=15,n.da=5) ##71 PC's is the optimal number

#2D plot EXCLUDING YS, BORYEONG
scatter(dapc_noYBM_300s,scree.da=FALSE,cellipse=0,leg=FALSE,label=c("POH","GE15","NAM","GE14", "GE14_300"), posi.da="bottomleft",csub=2,col=pop_cols,cex=1.5,clabel=1,pch=c(15,19,17,1,1),solid=1)
legend(x=3,y=4,bty='n', legend = c("Pohang `15", "Geoje `15", "Namhae `15", "Geoje `14", "Geoje '14 - 300"),pch=c(15,19,17,1,1),col=pop_cols,cex=1.1)

#2D plot WITH CLUSTERING
test_snpzip<-snpzip(L1L2_noYBM_300s,dapc_noYBM_300s,loading.plot=TRUE,method="median") 


###########################################################################################################
## BOUNDED SNP MODEL: Run DAPC on all samples EXCEPT Yellow Sea, Boryeong, Mukho / Sokcho, 300 AS SEPARATE POPULATION (DAPC only)


L1L2_bS_300s <-read.genepop("../L1L2stacks_m10_boundSNP/batch_3.filtered_MAF_MissingLoci_Individs_noYBM_300sep.gen")
summary(L1L2_bS_300s)
## note that there are 106 individuals in the file: POH = 27, GE15 = 32, NAM = 15, GE14 = 31, SM = 1

Pohang15 <- rep("POH",28)
Geoje15 <- rep("GE15",33)
Namhae15 <- rep("NAM",16)
Geoje14 <- rep("GE14",21)
Geoje14_300 <- rep("GE14_300",11)



pop_groups <- as.factor(c(rep("POH",28),rep("GE15",33),rep("NAM",16),rep("GE14",21),rep("GE14_300",11)))
pop_labels <- c("Pohang15", "Geoje15", "Namhae15", "Geoje14", "Geoje14_300")
pop_cols <- c("aquamarine4","deepskyblue","darkorchid1","black", "dodgerblue3")

## run dapc
dapc_bS_300s <- dapc(L1L2_bS_300s,L1L2_bS_300s$pop,n.pca=465,n.da=5) ##Retain all, then identify optimal number by optim.a.score
## find optimal number of principal components
test_a_score <- optim.a.score(dapc_bS_300s) #optimal number of PCS - 29
## run dapc only on optimal number of principal components
dapc_bS_300s <- dapc(L1L2_bS_300s,L1L2_bS_300s$pop,n.pca=15,n.da=5) ##71 PC's is the optimal number

#2D plot EXCLUDING YS, BORYEONG
scatter(dapc_bS_300s,scree.da=FALSE,cellipse=0,leg=FALSE,label=c("POH","GE15","NAM","GE14", "GE14_300"), posi.da="bottomleft",csub=2,col=pop_cols,cex=1.5,clabel=1,pch=c(15,19,17,1,1),solid=1)
legend(x=3,y=4,bty='n', legend = c("Pohang `15", "Geoje `15", "Namhae `15", "Geoje `14", "Geoje '14 - 300"),pch=c(15,19,17,1,1),col=pop_cols,cex=1.1)

#2D plot WITH CLUSTERING
test_snpzip<-snpzip(L1L2_bS_300s,dapc_bS_300s,loading.plot=TRUE,method="median") 

