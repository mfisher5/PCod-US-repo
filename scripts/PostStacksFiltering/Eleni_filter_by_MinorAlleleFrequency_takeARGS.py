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
MAF_header = 'Locus	Allele1_Pohang15	Allele2_Pohang15	Allele1_Geoje15	Allele2_Geoje15	Allele1_Namhae15	Allele2_Namhae15	Allele1_YellowSea16	Allele2_YellowSea16	Allele1_Boryeong07	Allele2_Boryeong07	Allele1_Geoje14	Allele2_Geoje14	Allele1_SokMuk	Allele2_SokMuk'
output_freqs.write(MAF_header + '\n')
blacklisted_MAF.write(MAF_header + '\n')



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
		Pohang15 = stripped_string.split(',')[1:29]
		Geoje15 = stripped_string.split(',')[29:62]
		Namhae15 = stripped_string.split(',')[62:78]
		YellowSea16 = stripped_string.split(',')[78:85]
		Boryeong07 = stripped_string.split(',')[85:88]
		Geoje14 = stripped_string.split(',')[88:121]
		SokMuk = stripped_string.split(',')[121:133]


		CountOf_homo1_Pohang15 = float(Pohang15.count('0101'))
		CountOf_homo2_Pohang15 = float(Pohang15.count('0202'))
		CountOf_het_Pohang15 = float(Pohang15.count('0102'))


		CountOf_homo1_Geoje15 = float(Geoje15.count('0101'))
		CountOf_homo2_Geoje15 = float(Geoje15.count('0202'))
		CountOf_het_Geoje15 = float(Geoje15.count('0102'))


		CountOf_homo1_Namhae15 = float(Namhae15.count('0101'))
		CountOf_homo2_Namhae15 = float(Namhae15.count('0202'))
		CountOf_het_Namhae15 = float(Namhae15.count('0102'))


		CountOf_homo1_YellowSea16 = float(YellowSea16.count('0101'))
		CountOf_homo2_YellowSea16 = float(YellowSea16.count('0202'))
		CountOf_het_YellowSea16 = float(YellowSea16.count('0102'))


		CountOf_homo1_Boryeong07 = float(Boryeong07.count('0101'))
		CountOf_homo2_Boryeong07 = float(Boryeong07.count('0202'))
		CountOf_het_Boryeong07 = float(Boryeong07.count('0102'))


		CountOf_homo1_Geoje14 = float(Geoje14.count('0101'))
		CountOf_homo2_Geoje14 = float(Geoje14.count('0202'))
		CountOf_het_Geoje14 = float(Geoje14.count('0102'))


		CountOf_homo1_SokMuk = float(SokMuk.count('0101'))
		CountOf_homo2_SokMuk = float(SokMuk.count('0202'))
		CountOf_het_SokMuk = float(SokMuk.count('0102'))


		total_alleles_Pohang15=2*(CountOf_homo1_Pohang15 + CountOf_homo2_Pohang15 + CountOf_het_Pohang15 + 0.000000001)
		FrequencyOf_allele1_Pohang15 = ((2 * CountOf_homo1_Pohang15) + (CountOf_het_Pohang15)) / (total_alleles_Pohang15)
		FrequencyOf_allele2_Pohang15 = ((2 * CountOf_homo2_Pohang15) + (CountOf_het_Pohang15)) / (total_alleles_Pohang15)

		total_alleles_Geoje15=2*(CountOf_homo1_Geoje15 + CountOf_homo2_Geoje15 + CountOf_het_Geoje15 + 0.000000001)
		FrequencyOf_allele1_Geoje15 = ((2 * CountOf_homo1_Geoje15) + (CountOf_het_Geoje15)) / (total_alleles_Geoje15)
		FrequencyOf_allele2_Geoje15 = ((2 * CountOf_homo2_Geoje15) + (CountOf_het_Geoje15)) / (total_alleles_Geoje15)

		total_alleles_Namhae15=2*(CountOf_homo1_Namhae15 + CountOf_homo2_Namhae15 + CountOf_het_Namhae15 + 0.000000001)
		FrequencyOf_allele1_Namhae15 = ((2 * CountOf_homo1_Namhae15) + (CountOf_het_Namhae15)) / (total_alleles_Namhae15)
		FrequencyOf_allele2_Namhae15 = ((2 * CountOf_homo2_Namhae15) + (CountOf_het_Namhae15)) / (total_alleles_Namhae15)

		total_alleles_YellowSea16=2*(CountOf_homo1_YellowSea16 + CountOf_homo2_YellowSea16 + CountOf_het_YellowSea16 + 0.000000001)
		FrequencyOf_allele1_YellowSea16 = ((2 * CountOf_homo1_YellowSea16) + (CountOf_het_YellowSea16)) / (total_alleles_YellowSea16)
		FrequencyOf_allele2_YellowSea16 = ((2 * CountOf_homo2_YellowSea16) + (CountOf_het_YellowSea16)) / (total_alleles_YellowSea16)

		total_alleles_Boryeong07=2*(CountOf_homo1_Boryeong07 + CountOf_homo2_Boryeong07 + CountOf_het_Boryeong07 + 0.000000001)
		FrequencyOf_allele1_Boryeong07 = ((2 * CountOf_homo1_Boryeong07) + (CountOf_het_Boryeong07)) / (total_alleles_Boryeong07)
		FrequencyOf_allele2_Boryeong07 = ((2 * CountOf_homo2_Boryeong07) + (CountOf_het_Boryeong07)) / (total_alleles_Boryeong07)

		total_alleles_Geoje14=2*(CountOf_homo1_Geoje14 + CountOf_homo2_Geoje14 + CountOf_het_Geoje14 + 0.000000001)
		FrequencyOf_allele1_Geoje14 = ((2 * CountOf_homo1_Geoje14) + (CountOf_het_Geoje14)) / (total_alleles_Geoje14)
		FrequencyOf_allele2_Geoje14 = ((2 * CountOf_homo2_Geoje14) + (CountOf_het_Geoje14)) / (total_alleles_Geoje14)

		total_alleles_SokMuk=2*(CountOf_homo1_SokMuk + CountOf_homo2_SokMuk + CountOf_het_SokMuk + 0.000000001)
		FrequencyOf_allele1_SokMuk = ((2 * CountOf_homo1_SokMuk) + (CountOf_het_SokMuk)) / (total_alleles_SokMuk)
		FrequencyOf_allele2_SokMuk = ((2 * CountOf_homo2_SokMuk) + (CountOf_het_SokMuk)) / (total_alleles_SokMuk)

		if ((FrequencyOf_allele1_Pohang15 >= 0.05) or (FrequencyOf_allele1_Geoje15 >= 0.05) or (FrequencyOf_allele1_Namhae15 >= 0.05) or (FrequencyOf_allele1_YellowSea16 >= 0.05) or (FrequencyOf_allele1_Boryeong07 >= 0.05) or (FrequencyOf_allele1_Geoje14 >= 0.05) or (FrequencyOf_allele1_SokMuk >= 0.05)) and ((FrequencyOf_allele2_Pohang15 >= 0.05) or (FrequencyOf_allele2_Geoje15 >= 0.05) or (FrequencyOf_allele2_Namhae15 >= 0.05) or (FrequencyOf_allele2_YellowSea16 >= 0.05) or (FrequencyOf_allele2_Boryeong07 >= 0.05) or (FrequencyOf_allele2_Geoje14 >= 0.05) or (FrequencyOf_allele2_SokMuk >= 0.05)):
			locus_freqs.append(locus+'\t'+str(FrequencyOf_allele1_Pohang15) + '\t' + str(FrequencyOf_allele1_Geoje15) + '\t' + str(FrequencyOf_allele1_Namhae15) + '\t' + str(FrequencyOf_allele1_YellowSea16) + '\t' + str(FrequencyOf_allele1_Boryeong07) + '\t' + str(FrequencyOf_allele1_Geoje14) + '\t' + str(FrequencyOf_allele1_SokMuk))

			locus_write = str(locus_freqs).replace('[','').replace(',','\t').replace(']', '').replace("'", '').replace(' ','').replace('\\n','').replace('\\t','\t')

			output_freqs.write(locus_write + '\n')
			filtered_genotypes.write(mystring)
		else:
			bad_locus_freqs.append(locus+'\t'+ str(FrequencyOf_allele1_Pohang15) + '\t' + str(FrequencyOf_allele1_Geoje15) + '\t' + str(FrequencyOf_allele1_Namhae15) + '\t' + str(FrequencyOf_allele1_YellowSea16) + '\t' + str(FrequencyOf_allele1_Boryeong07) + '\t' + str(FrequencyOf_allele1_Geoje14) + '\t' + str(FrequencyOf_allele1_SokMuk))
			bad_locus_write = str(bad_locus_freqs).replace('[','').replace(',','\t').replace(']', '').replace("'", '').replace(' ','').replace('\\n','').replace('\\t','\t')

			print bad_locus_write
			blacklisted_MAF.write(bad_locus_write + '\n')
			blacklisted_genotypes.write(mystring)

#close open files
genotypes_file.close()
blacklisted_genotypes.close()
blacklisted_MAF.close()
filtered_genotypes.close()
output_freqs.close()