setwd("D:/Pacific cod/DataAnalysis/PCod-US-repo/analyses")
PI033<- read.delim("D:/Pacific cod/DataAnalysis/PCod-US-repo/stacks/PI04_033.alleles.tsv.gz", header=FALSE, comment.char="#")

# find read depth of each locus
loci_list <- unique(PI033$V3)
depth_list <- c()
n.loci <- length(loci_list)
for(locus in loci_list) {
  indices <- which(PI033$V3 == locus)
  depth <- 0
  for(i in indices) {
    depth <- depth + PI033$V6[i]
  }
  depth_list <- c(depth_list,depth)
}
boxplot(depth_list)
title(main = "Distribution of Loci Read Depth (all)", ylab = "Number of Reads", xlab = "PI04_033")
depth_list_small <- depth_list[depth_list < 1000]
boxplot(depth_list_small)
title(main = "Distribution of Loci Read Depth (<1000)", ylab = "Number of Reads", xlab = "PI04_033")


# check to make sure that the depth is truncated at lowest allowed read depth (here, 10)
length(which(depth_list < 10))


#find number of haplotypes per loci




#find distribution of haplotype depth
boxplot(AD06$V6)
title(main = "Distribution of Haplotype Read Depth (all)", ylab = "Number of Reads")

boxplot(AD06$V6[AD06$V6 < 1000])
title(main = "Distribution of Haplotype Read Depth (all)", ylab = "Number of Reads")

# check read depths of haplotypes
# ----What percentage of haplotypes have a read depth of less than 5?
length(which(AD06$V6 < 5))/length(AD06$V6)
# ----What percentage of haplotypes have a read depth of less than 10?
length(which(AD06$V6 < 10))
