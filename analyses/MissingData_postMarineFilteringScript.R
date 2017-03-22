
batch_1.CorrectedGenotypes_biallelic <- read.delim("D:/Pacific cod/DataAnalysis/PCod-US-repo/stacks_wgenome/batch_1.CorrectedGenotypes_biallelic.txt")

genepop <- batch_1.CorrectedGenotypes_biallelic
total_loci <- ncol(genepop) - 2
total_individs <- nrow(genepop)

  
#-- missing data per locus: proportion of individuals missing a genotype at that locus
missing_props <- c()
for(i in seq(from = 2, to = ncol(genepop)-1)) {
  genotypes <- genepop[,i]
  p_missing <- (length(which(genotypes == "-")))/total_individs
  missing_props <- c(missing_props, p_missing)
}

hist(missing_props, main = "Missing Data per Locus", xlab = "Proportion Individuals Missing Genotypes")
length(which(missing_props > 0.5))
length(missing_props)


#-- missing data per individual: proportion of loci missing a genotype in that individual
missing_props2 <- c()
total_individs <- nrow(genepop)
for(i in seq(from = 1, to = total_individs)) {
  genotypes <- genepop[i,]
  p_missing <- (length(which(genotypes == "-")))/total_loci
  missing_props2 <- c(missing_props2, p_missing)
}

hist(missing_props2, main = "Missing Data per Individual", xlab = "Proportion Loci Missing Genotypes")
length(which(missing_props2 > 0.5))
length(missing_props2)



#-- Missing Data per Locus when individuals missing > 90% of genotypes are removed

gte_90_indices <- which(missing_props2 >= 0.20) #which individuals are missing more than 90% of data
n_individs <- total_individs- length(gte_90_indices) # new total number of individuals

loci_indices <- seq(2,total_loci) #create a list of loci indices

missing_props_lte90 <- c()
for(i in loci_indices){
  genotypes <- genepop[,i]
  new_genotypes <- genotypes[-gte_90_indices] #remove the genotypes that belong to the individuals missing > 90% of their data
  p_missing <- (length(which(new_genotypes == "-")))/n_individs
  if(p_missing > 0.20){
    print(genotypes[1])
  }
  missing_props_lte90 <- c(missing_props_lte90, p_missing)
}
length(which(missing_props_lte90 <= 0.2))
hist(missing_props_lte90, main = "Missing Data per Locus (Individs <20% MD)", xlab = "Proportion Individuals Missing Genotypes")
length(missing_props_lte20)
missing_props_lte90






length(which(missing_props2 <= 0.20))

genotypes <- genepop[1,]
genotypes[1]



#--- Figuring out which individuals to remove, with a 20% cutoff (remove individuals with more than 20% missing data)
total_individs <- nrow(genepop)
remove_individs <- c()
for(i in seq(from = 1, to = total_individs)) {
  genotypes <- genepop[i,]
  p_missing <- (length(which(genotypes == "-")))/total_loci
  if(p_missing > 0.20){
    remove_individs <- c(remove_individs,genotypes[1])
  }
  missing_props2 <- c(missing_props2, p_missing)
}
print remove_individs

