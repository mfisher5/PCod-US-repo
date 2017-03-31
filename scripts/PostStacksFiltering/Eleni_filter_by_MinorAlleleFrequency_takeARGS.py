### This scripts corrects for minor allele frequency
#Adjusted from Eleni's script (June 15,2015) to take arguments
#MF 2/24/2017

#################


import sys

# Open your files for reading and writing
genotypes_file = open(sys.argv[1],'r')
output_freqs = open(sys.argv[2],'w')
filtered_genotypes = open(sys.argv[3],'w')
blacklisted_genotypes = open(sys.argv[4],'w')
blacklisted_MAF = open(sys.argv[5],'w')

# Tell the computer that your files have headers
header = True

# This code creates a list of each allele for each population. This will be the headers for the file that outputs the allele frequencies. Modify as needed.
MAF_header = 'Locus	Allele1_Kodiak03	Allele1_Adak06	Allele1_WashCoast05	Allele1_HecStrait04	Allele1_PugetSound12	Allele1_GeorgiaStrait13	Allele1_PWSound12	Allele1_UnimakPass03'
output_freqs.write(MAF_header + '\n')
blacklisted_MAF.write(MAF_header + '\n')



count_bad_loci = 0
count_good_loci = 0


for mystring in genotypes_file:
	if header:
		genotypes_header = mystring
		filtered_genotypes.write(genotypes_header)
		blacklisted_genotypes.write(genotypes_header)
		header = False
	else:
		stripped_string = mystring.strip('\n')
		locus = stripped_string.split(',')[0]
		locus_freqs = []
		bad_locus_freqs = []
		Kodiak03 = stripped_string.split(',')[1:42]
		Adak06 = stripped_string.split(',')[42:73]
		WashCoast05 = stripped_string.split(',')[73:106]
		HecStrait04 = stripped_string.split(',')[106:146]
		PugetSound12 = stripped_string.split(',')[146:187]
		GeorgiaStrait13 = stripped_string.split(',')[187:199]
		PWSound12 = stripped_string.split(',')[199:223]
		UnimakPass03 = stripped_string.split(',')[223:265]


		CountOf_homo1_Kodiak03 = float(Kodiak03.count('0101'))
		CountOf_homo2_Kodiak03 = float(Kodiak03.count('0202'))
		CountOf_het_Kodiak03 = float(Kodiak03.count('0102'))


		CountOf_homo1_Adak06 = float(Adak06.count('0101'))
		CountOf_homo2_Adak06 = float(Adak06.count('0202'))
		CountOf_het_Adak06 = float(Adak06.count('0102'))


		CountOf_homo1_WashCoast05 = float(WashCoast05.count('0101'))
		CountOf_homo2_WashCoast05 = float(WashCoast05.count('0202'))
		CountOf_het_WashCoast05 = float(WashCoast05.count('0102'))


		CountOf_homo1_HecStrait04 = float(HecStrait04.count('0101'))
		CountOf_homo2_HecStrait04 = float(HecStrait04.count('0202'))
		CountOf_het_HecStrait04 = float(HecStrait04.count('0102'))


		CountOf_homo1_PugetSound12 = float(PugetSound12.count('0101'))
		CountOf_homo2_PugetSound12 = float(PugetSound12.count('0202'))
		CountOf_het_PugetSound12 = float(PugetSound12.count('0102'))


		CountOf_homo1_GeorgiaStrait13 = float(GeorgiaStrait13.count('0101'))
		CountOf_homo2_GeorgiaStrait13 = float(GeorgiaStrait13.count('0202'))
		CountOf_het_GeorgiaStrait13 = float(GeorgiaStrait13.count('0102'))


		CountOf_homo1_PWSound12 = float(PWSound12.count('0101'))
		CountOf_homo2_PWSound12 = float(PWSound12.count('0202'))
		CountOf_het_PWSound12 = float(PWSound12.count('0102'))


		CountOf_homo1_UnimakPass03 = float(UnimakPass03.count('0101'))
		CountOf_homo2_UnimakPass03 = float(UnimakPass03.count('0202'))
		CountOf_het_UnimakPass03 = float(UnimakPass03.count('0102'))


		total_alleles_Kodiak03=2*(CountOf_homo1_Kodiak03 + CountOf_homo2_Kodiak03 + CountOf_het_Kodiak03 + 0.000000001)
		FrequencyOf_allele1_Kodiak03 = ((2 * CountOf_homo1_Kodiak03) + (CountOf_het_Kodiak03)) / (total_alleles_Kodiak03)
		FrequencyOf_allele2_Kodiak03 = ((2 * CountOf_homo2_Kodiak03) + (CountOf_het_Kodiak03)) / (total_alleles_Kodiak03)

		total_alleles_Adak06=2*(CountOf_homo1_Adak06 + CountOf_homo2_Adak06 + CountOf_het_Adak06 + 0.000000001)
		FrequencyOf_allele1_Adak06 = ((2 * CountOf_homo1_Adak06) + (CountOf_het_Adak06)) / (total_alleles_Adak06)
		FrequencyOf_allele2_Adak06 = ((2 * CountOf_homo2_Adak06) + (CountOf_het_Adak06)) / (total_alleles_Adak06)

		total_alleles_WashCoast05=2*(CountOf_homo1_WashCoast05 + CountOf_homo2_WashCoast05 + CountOf_het_WashCoast05 + 0.000000001)
		FrequencyOf_allele1_WashCoast05 = ((2 * CountOf_homo1_WashCoast05) + (CountOf_het_WashCoast05)) / (total_alleles_WashCoast05)
		FrequencyOf_allele2_WashCoast05 = ((2 * CountOf_homo2_WashCoast05) + (CountOf_het_WashCoast05)) / (total_alleles_WashCoast05)

		total_alleles_HecStrait04=2*(CountOf_homo1_HecStrait04 + CountOf_homo2_HecStrait04 + CountOf_het_HecStrait04 + 0.000000001)
		FrequencyOf_allele1_HecStrait04 = ((2 * CountOf_homo1_HecStrait04) + (CountOf_het_HecStrait04)) / (total_alleles_HecStrait04)
		FrequencyOf_allele2_HecStrait04 = ((2 * CountOf_homo2_HecStrait04) + (CountOf_het_HecStrait04)) / (total_alleles_HecStrait04)

		total_alleles_PugetSound12=2*(CountOf_homo1_PugetSound12 + CountOf_homo2_PugetSound12 + CountOf_het_PugetSound12 + 0.000000001)
		FrequencyOf_allele1_PugetSound12 = ((2 * CountOf_homo1_PugetSound12) + (CountOf_het_PugetSound12)) / (total_alleles_PugetSound12)
		FrequencyOf_allele2_PugetSound12 = ((2 * CountOf_homo2_PugetSound12) + (CountOf_het_PugetSound12)) / (total_alleles_PugetSound12)

		total_alleles_GeorgiaStrait13=2*(CountOf_homo1_GeorgiaStrait13 + CountOf_homo2_GeorgiaStrait13 + CountOf_het_GeorgiaStrait13 + 0.000000001)
		FrequencyOf_allele1_GeorgiaStrait13 = ((2 * CountOf_homo1_GeorgiaStrait13) + (CountOf_het_GeorgiaStrait13)) / (total_alleles_GeorgiaStrait13)
		FrequencyOf_allele2_GeorgiaStrait13 = ((2 * CountOf_homo2_GeorgiaStrait13) + (CountOf_het_GeorgiaStrait13)) / (total_alleles_GeorgiaStrait13)

		total_alleles_PWSound12=2*(CountOf_homo1_PWSound12 + CountOf_homo2_PWSound12 + CountOf_het_PWSound12 + 0.000000001)
		FrequencyOf_allele1_PWSound12 = ((2 * CountOf_homo1_PWSound12) + (CountOf_het_PWSound12)) / (total_alleles_PWSound12)
		FrequencyOf_allele2_PWSound12 = ((2 * CountOf_homo2_PWSound12) + (CountOf_het_PWSound12)) / (total_alleles_PWSound12)

		total_alleles_UnimakPass03=2*(CountOf_homo1_UnimakPass03 + CountOf_homo2_UnimakPass03 + CountOf_het_UnimakPass03 + 0.000000001)
		FrequencyOf_allele1_UnimakPass03 = ((2 * CountOf_homo1_UnimakPass03) + (CountOf_het_UnimakPass03)) / (total_alleles_UnimakPass03)
		FrequencyOf_allele2_UnimakPass03 = ((2 * CountOf_homo2_UnimakPass03) + (CountOf_het_UnimakPass03)) / (total_alleles_UnimakPass03)

		if ((FrequencyOf_allele1_Kodiak03 >= 0.05) or (FrequencyOf_allele1_Adak06 >= 0.05) or (FrequencyOf_allele1_WashCoast05 >= 0.05) or (FrequencyOf_allele1_HecStrait04 >= 0.05) or (FrequencyOf_allele1_PugetSound12 >= 0.05) or (FrequencyOf_allele1_GeorgiaStrait13 >= 0.05) or (FrequencyOf_allele1_PWSound12 >= 0.05) or (FrequencyOf_allele1_UnimakPass03 >= 0.05)) and ((FrequencyOf_allele2_Kodiak03 >= 0.05) or (FrequencyOf_allele2_Adak06 >= 0.05) or (FrequencyOf_allele2_WashCoast05 >= 0.05) or (FrequencyOf_allele2_HecStrait04 >= 0.05) or (FrequencyOf_allele2_PugetSound12 >= 0.05) or (FrequencyOf_allele2_GeorgiaStrait13 >= 0.05) or (FrequencyOf_allele2_PWSound12 >= 0.05) or (FrequencyOf_allele2_UnimakPass03 >= 0.05)):
			locus_freqs.append(locus+'\t'+str(FrequencyOf_allele1_Kodiak03) + '\t' + str(FrequencyOf_allele1_Adak06) + '\t' + str(FrequencyOf_allele1_WashCoast05) + '\t' + str(FrequencyOf_allele1_HecStrait04) + '\t' + str(FrequencyOf_allele1_PugetSound12) + '\t' + str(FrequencyOf_allele1_GeorgiaStrait13) + '\t' + str(FrequencyOf_allele1_PWSound12) + '\t' + str(FrequencyOf_allele1_UnimakPass03))

			locus_write = str(locus_freqs).replace('[','').replace(',','\t').replace(']', '').replace("'", '').replace(' ','').replace('\\n','').replace('\\t','\t')

			output_freqs.write(locus_write + '\n')
			filtered_genotypes.write(mystring)
			count_good_loci = count_good_loci + 1
		else:
			bad_locus_freqs.append(locus+'\t'+ str(FrequencyOf_allele1_Kodiak03) + '\t' + str(FrequencyOf_allele1_Adak06) + '\t' + str(FrequencyOf_allele1_WashCoast05) + '\t' + str(FrequencyOf_allele1_HecStrait04) + '\t' + str(FrequencyOf_allele1_PugetSound12) + '\t' + str(FrequencyOf_allele1_GeorgiaStrait13) + '\t' + str(FrequencyOf_allele1_PWSound12) + '\t' + str(FrequencyOf_allele1_UnimakPass03))
			bad_locus_write = str(bad_locus_freqs).replace('[','').replace(',','\t').replace(']', '').replace("'", '').replace(' ','').replace('\\n','').replace('\\t','\t')

			count_bad_loci = count_bad_loci + 1
			blacklisted_MAF.write(bad_locus_write + '\n')
			blacklisted_genotypes.write(mystring)

print 'You filtered out: '
print str(count_bad_loci) + ' loci'
print 'You retained: '
print str(count_good_loci) + ' loci'

#close open files
genotypes_file.close()
blacklisted_genotypes.close()
blacklisted_MAF.close()
filtered_genotypes.close()
output_freqs.close()