### This scripts removes loci with too much missing data (you set the threshold)
#Adjusted from Eleni's script (June 15,2015) to take arguments
#MF 2/28/2017

#################


import sys

# Open your files for reading and writing
genotypes_file = open(sys.argv[1],'r')
clean_output_file = open(sys.argv[2],'w')
blacklisted_output_file = open(sys.argv[3], 'w')


#run for loop to counting missing genotypes by locus for each population

count = 0
bad_count = 0

for mystring in genotypes_file:		# Read in each line in the file as a string
	if count == 0:
		genotypes_header = mystring
		clean_output_file.write(genotypes_header)
		blacklisted_output_file.write(genotypes_header)
		count += 1
	else:
		count += 1
		overall_percent_missingdata = []
		stripped_string = mystring.strip('\n')
		locus_name = stripped_string.split(',')[0]
		Kodiak03 = stripped_string.split(',')[1:47]
		Adak06 = stripped_string.split(',')[47:89]
		WashCoast05 = stripped_string.split(',')[89:134]
		HecStrait04 = stripped_string.split(',')[134:179]
		PribIslands04 = stripped_string.split(',')[179:182]
		PugetSound12 = stripped_string.split(',')[182:229]
		GeorgiaStrait13 = stripped_string.split(',')[229:244]
		PWSound12 = stripped_string.split(',')[244:268]
		UnimakPass03 = stripped_string.split(',')[268:313]

#per population counts
#next pop
		Count_MissingGenotypesByLocus_Kodiak03 = float(Kodiak03.count('0000'))
		NumberOf_Kodiak03_individuals = float(len(Kodiak03))
		Percent_MissingData_Kodiak03 = float(Count_MissingGenotypesByLocus_Kodiak03/NumberOf_Kodiak03_individuals)
		overall_percent_missingdata.append(Percent_MissingData_Kodiak03)
#next pop
		Count_MissingGenotypesByLocus_Adak06 = float(Adak06.count('0000'))
		NumberOf_Adak06_individuals = float(len(Adak06))
		Percent_MissingData_Adak06 = float(Count_MissingGenotypesByLocus_Adak06/NumberOf_Adak06_individuals)
		overall_percent_missingdata.append(Percent_MissingData_Adak06)
#next pop
		Count_MissingGenotypesByLocus_WashCoast05 = float(WashCoast05.count('0000'))
		NumberOf_WashCoast05_individuals = float(len(WashCoast05))
		Percent_MissingData_WashCoast05 = float(Count_MissingGenotypesByLocus_WashCoast05/NumberOf_WashCoast05_individuals)
		overall_percent_missingdata.append(Percent_MissingData_WashCoast05)
#next pop
		Count_MissingGenotypesByLocus_HecStrait04 = float(HecStrait04.count('0000'))
		NumberOf_HecStrait04_individuals = float(len(HecStrait04))
		Percent_MissingData_HecStrait04 = float(Count_MissingGenotypesByLocus_HecStrait04/NumberOf_HecStrait04_individuals)
		overall_percent_missingdata.append(Percent_MissingData_HecStrait04)
#next pop
		Count_MissingGenotypesByLocus_PugetSound12 = float(PugetSound12.count('0000'))
		NumberOf_PugetSound12_individuals = float(len(PugetSound12))
		Percent_MissingData_PugetSound12 = float(Count_MissingGenotypesByLocus_PugetSound12/NumberOf_PugetSound12_individuals)
		overall_percent_missingdata.append(Percent_MissingData_PugetSound12)
#next pop
		Count_MissingGenotypesByLocus_PWSound12 = float(PWSound12.count('0000'))
		NumberOf_PWSound12_individuals = float(len(PWSound12))
		Percent_MissingData_PWSound12 = float(Count_MissingGenotypesByLocus_PWSound12/NumberOf_PWSound12_individuals)
		overall_percent_missingdata.append(Percent_MissingData_PWSound12)
#next pop
		Count_MissingGenotypesByLocus_UnimakPass03 = float(UnimakPass03.count('0000'))
		NumberOf_UnimakPass03_individuals = float(len(UnimakPass03))
		Percent_MissingData_UnimakPass03 = float(Count_MissingGenotypesByLocus_UnimakPass03/NumberOf_UnimakPass03_individuals)
		overall_percent_missingdata.append(Percent_MissingData_UnimakPass03)

#write loci to appropriate file
		if all(i < 0.20 for i in overall_percent_missingdata):
			clean_output_file.write(mystring)
		else: 
			blacklisted_output_file.write(mystring)
			bad_count += 1
#print output
n_loci = str(count - 1)
print 'processed ' + n_loci + ' loci'
print 'Number of loci removed: ' + str(bad_count)