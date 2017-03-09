###### Generate Shell Script to Align all FastQ Data Files to BOWTIE ref genome ######

## MF 3/9/2017
## For US Cod Data



## At Command Line: python cstacks_populations_genShell_3-8 ARG1 ARG2
##---- ARG1 = complete sample list file
##---- ARG2 = relative path to bowtie ref database, including file name without filetype suffix
##---- ARG3 = relative path to stacks fastq files, output from process_radtags
##---- ARG4 = batch #

############################################################################


import sys
sampfilename = sys.argv[1]
path = sys.argv[2]
fastq_path = sys.argv[3]
batch = sys.argv[4]

samples = open(sampfilename, "r")
shell = open("RefGenome_BOWTIEalign_" + batch + ".sh", "w")

shell.write("#!/bin/bash\n\n")

for line in samples: 
	sample = line.strip().split()[0]
	newstr = "bowtie -q -v 3 -norc --sam " + path + " " + fastq_path + "/" + sample + " " + sample + ".sam"
	shell.write(newstr + "\n")

samples.close()
shell.close()
