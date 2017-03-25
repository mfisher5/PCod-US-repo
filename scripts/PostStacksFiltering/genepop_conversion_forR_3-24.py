#### This script converts the FINAL filtered .csv document (corrected genotypes, MAF filtered, low coverage loci filtered, low coverage individuals filtered) into a genepop file format ####

## MF 12/13/2016

## ARG1 : .csv file
## ARG2 : name of genepop file (must be .gen)
### Note -- LEAVE the "sample" header in the .csv file. Edit the correct title line AND the population indices in the script below. 
#############################################################################################

import sys
csvFile = open(sys.argv[1], "r")
genepop = open(sys.argv[2], "w")

# create a title for the genepop file
genepop.write("PCod sequencing Lanes 1 and 2 final filtered genepop" + "\r\n")
 

# transpose the .csv file so that the loci are along the top row, and the individual names are in the first column
data_matrix = []

for line in csvFile:
    tmp_line = ''
    tmp_line += line
    data_matrix.append(tmp_line.split(","))

csvFile.close()
        
transposed = zip(*data_matrix)

#create loci list
locilist = transposed[0]
LociIndex = range(0, len(locilist))
for i in LociIndex: 
	if transposed[0][i] != "sample":
		genepop.write(transposed[0][i] + "\r\n")

#set range for populations. NOTE -- the end # must be the last column in that population + 1
#--- you can copy AND ADJUST the indices used in the file "Eleni_filter_by_MinorAlleleFrequency". Adjust by adding 1 to the end index in each pop
Kodiak03 = transposed[1:42]
Adak06 = transposed[42:73]
WashCoast05 = transposed[73:106]
HecStrait04 = transposed[106:146]
PugetSound12 = transposed[146:187]
GeorgiaStrait13 = transposed[187:199]
PWSound12 = transposed[199:223]
UnimakPass03 = transposed[223:264]

last_line = list(transposed[264])

seq = range(0,len(last_line))
for i in seq: 
	last_line[i] = last_line[i].strip("\r\n")



genepop.write("Pop" + "\r\n")
for line in Kodiak03: 
	linestr = "\t".join(line[1:])
	newline =  line[0] + ",\t" + linestr + "\r\n"
	genepop.write(newline)

genepop.write("Pop" + "\r\n")
for line in Adak06: 
	newline =  line[0] + ",\t" + "\t".join(line[1:]) + "\r\n"
	genepop.write(newline)

genepop.write("Pop" + "\r\n")
for line in WashCoast05: 
	newline =  line[0] + ",\t" + "\t".join(line[1:]) + "\r\n"
	genepop.write(newline)

genepop.write("Pop" + "\r\n")
for line in HecStrait04: 
	newline =  line[0] + ",\t" + "\t".join(line[1:]) + "\r\n"
	genepop.write(newline)

genepop.write("Pop" + "\r\n")
for line in PugetSound12: 
	newline =  line[0] + ",\t" + "\t".join(line[1:]) + "\r\n"
	genepop.write(newline)

genepop.write("Pop" + "\r\n")
for line in GeorgiaStrait13: 
	newline =  line[0] + ",\t" + "\t".join(line[1:]) + "\r\n"
	genepop.write(newline)

genepop.write("Pop" + "\r\n")
for line in PWSound12: 
	newline =  line[0] + ",\t" + "\t".join(line[1:]) + "\r\n"
	genepop.write(newline)


genepop.write("Pop" + "\r\n")
for line in UnimakPass03: 
	newline =  line[0] + ",\t" + "\t".join(line[1:]) + "\r\n"
	genepop.write(newline)

newline =  last_line[0] + ",\t" + "\t".join(last_line[1:])
genepop.write(newline)




genepop.close()
