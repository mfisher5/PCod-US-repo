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



raw_data = "/media/mfisher5/New\ Volume/Kristen/Data/" # path to raw data files

newfile.write("cd /mnt/hgfs/Shared\ Drive\ D/Pacific\ cod/DataAnalysis"+"\n")


# radtags lane 1
newfile.write("\n# lane 1\n")
newfile.write("\n\nprocess_radtags -p " + raw_data + "KOD03 -i gzfastq -y gzfastq -o PCod-US-repo/samplesT142 -b PCod-US-repo/scripts/barcodesL1.txt -e sbfI -E phred33 -r -c -q -t 142\n\n") 

# radtags lane 2
newfile.write("\n# lane 2\n")
newfile.write("\n\nprocess_radtags -p " + raw_data + "AD06 -i gzfastq -y gzfastq -o PCod-US-repo/samplesT142 -b PCod-US-repo/scripts/barcodesL2_AD.txt -e sbfI -E phred33 -r -c -q -t 142\n\n") 
newfile.write("\n\nprocess_radtags -p " + raw_data + "WC05 -i gzfastq -y gzfastq -o PCod-US-repo/samplesT142 -b PCod-US-repo/scripts/barcodesL2_WC.txt -e sbfI -E phred33 -r -c -q -t 142\n\n") 

# radtags lane 3
newfile.write("\n# lane 3\n")
newfile.write("\n\nprocess_radtags -p " + raw_data + "HS04 -i gzfastq -y gzfastq -o PCod-US-repo/samplesT142 -b PCod-US-repo/scripts/barcodesL3_HS04.txt -e sbfI -E phred33 -r -c -q -t 142\n\n") 
newfile.write("\n\nprocess_radtags -p " + raw_data + "PI04 -i gzfastq -y gzfastq -o PCod-US-repo/samplesT142 -b PCod-US-repo/scripts/barcodesL3_PI04.txt -e sbfI -E phred33 -r -c -q -t 142\n\n") 


# radtags lane 4
newfile.write("\n# lane 4\n")
newfile.write("\n\nprocess_radtags -p " + raw_data + "PS12 -i gzfastq -y gzfastq -o PCod-US-repo/samplesT142 -b PCod-US-repo/scripts/barcodesL4_PS12.txt -e sbfI -E phred33 -r -c -q -t 142\n\n") 
newfile.write("\n\nprocess_radtags -p " + raw_data + "PWS12_GS13 -i gzfastq -y gzfastq -o PCod-US-repo/samplesT142 -b PCod-US-repo/scripts/barcodesL4_PWS12_GS13.txt -e sbfI -E phred33 -r -c -q -t 142\n\n") 

# radtags lane 5
newfile.write("\n# lane 5\n")
newfile.write("\n\nprocess_radtags -p " + raw_data + "UP03 -i gzfastq -y gzfastq -o PCod-US-repo/samplesT142 -b PCod-US-repo/scripts/barcodesL5.txt -e sbfI -E phred33 -r -c -q -t 142\n\n") 


#### check fastqc after process_radtags
newfile.write("echo 'Check several of the files with FASTQC. Are they trimmed to the correct length? [yes/no]'\nread ANSWER\nif[$ANSWER == 'no']; then\n\texit 1\nfi\n\n")


#=== Lane 1: forward sequences of paired end
samplefile = open("sampleList.txt", "w") #create a new file for the list of all samples
n_files = len(sys)
for i in seq(1:n_files):
	bar_file = open(sys.argv[i], "r")
	for line in bar_file: 
		linelist=line.strip().split()	 	
		samplefile.write(linelist[1] + "\n")
	bar_file.close()
samplefile.close()


#ustacks 
newfile.write("\n"+"#ustacks"+"\n")
samplefile = open("sampleList.txt", "r")

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
samplefile = open("sampleList.txt", "r")
newfile.write("\n\n")
for line in samplefile: 
	sampID = line.strip()	
	sampIDfile = sampID + ".fq.gz"
	newstr = "zcat samplesT142/" + sampIDfile + " | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt
	newfile.write("\n" + newstr + "\n")

samplefile.close()
newfile.close()

