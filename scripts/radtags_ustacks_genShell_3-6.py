##### US Cod - generate shell script for process-radtags + ustacks + count and print size of each file #####


## MF 3/6/2017 
## Adapted from Korea cod scripts - uses (1) bounded SNP model, (2) stack depth (m) of 10, and (3) M of 3

##############
## At the command line: python radtags_ustacks_genShellSR.py ARG1
#ARG 1: input file, barcodes. line format: <barcode> \t <sampleID>

## To change within the script: 
#(1) trim file length
#(2) output folders for trimmed sample files, ustacks files


#should be run from within the "scripts" folder

###########################################################################


import sys
newfile = open("radtags_ustacks_3-6.sh", "w")	#create a new file where the ustacks code will go
newfile.write("#!/bin/bash\n")

raw_data = "" # path to raw data files

newfile.write("cd /mnt/hgfs/Shared\ Drive\ D/Pacific\ cod/DataAnalysis"+"\n")
newfile.write("\n\nprocess_radtags -p " + raw_data + " -i gzfastq -y gzfastq -o PCod-US-repo/samplesT142 -b PCod-US-repo/scripts/barcodes.txt -e sbfI -E phred33 -r -c -q -t 142\n\n") 

newfile.write("echo 'Check several of the files with FASTQC. Are they trimmed to the correct length? [yes/no]'\nread ANSWER\nif[$ANSWER == 'no']; then\n\texit 1\nfi\n\n")



#Take the two input files and make a master list of sample names, including adding ".1" to the end of the paired end samples. 
samplefile = open("L1L2_sampleList.txt", "w")


#=== Lane 1: forward sequences of paired end
myfile = open(sys.argv[1], "r")
for line in myfile: 			#for each line in the barcode file	
	linelist=line.strip().split()	
	sampID = linelist[1] + ".1" 		#save the third object as "sampID"
	samplefile.write(sampID + "\n")
myfile.close()
#=== Lane 2: single read
myfile2 = open(sys.argv[2], "r")
for line in myfile2: 			#for each line in the barcode file	
	linelist=line.strip().split()	 	
	samplefile.write(linelist[1] + "\n")
myfile2.close()	
samplefile.close()


#ustacks 
newfile.write("\n"+"#ustacks"+"\n")
samplefile = open("L1L2_sampleList.txt", "r")

ID_int = 1
for line in samplefile: 			#for each line in the barcode file	
	sampID = line.strip()	
	if ID_int < 10: 
		ustacks_code = "ustacks -t gzfastq -f samplesT142/" + sampID + ".fq.gz -r -d -o stacks -i 00" + str(ID_int) + " -m 10 -M 3 -p 6 --model_type bounded" + "\n"
	elif ID_int >= 10 and ID_int < 100: 
		ustacks_code = "ustacks -t gzfastq -f samplesT142/" + sampID + ".fq.gz -r -d -o stacks -i 0" + str(ID_int) + " -m 10 -M 3 -p 6 --model_type bounded" + "\n"
								#create a line of code for ustacks that includes the new sample ID (with 1 leading 0)
	else: 
		ustacks_code = "ustacks -t gzfastq -f samplesT142/" + sampID + ".fq.gz -r -d -o stacks -i " + str(ID_int) + " -m 10 -M 3 -p 6 --model_type bounded" + "\n"
								#create a line of code for ustacks that includes the new sample ID (with no leading 0s)
	newfile.write(ustacks_code)	#append this new line of code to the output file
	ID_int += 1
samplefile.close()


#count sequences in each fastq file
samplefile = open("L1L2_sampleList.txt", "r")
newfile.write("\n\n")
for line in samplefile: 
	sampID = line.strip()	
	sampIDfile = sampID + ".fq.gz"
	newstr = "zcat samplesT142/" + sampIDfile + " | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt
	newfile.write("\n" + newstr + "\n")

samplefile.close()
newfile.close()

