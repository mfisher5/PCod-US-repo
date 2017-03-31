###### Generate Shell Script to Run cstacks --> populations ######

## MF 3/8/2017
## For US Cod Data, altered for Sam's data 3/30/2017



## In Jupyter Notebook: !python ustacks_populations_genShell_mf.py ARG1 ARG2 ARG3 ARG4
##---- ARG1 = file with samples for cstacks. include the local path if not in the same folder as this script
##---- ARG2 = file will all samples, in barcode file format (<barcode> <tab> <sample ID>). include the local path if not in the same folder as this script
##---- ARG3 = name for new shell file (i.e. "ustacks_populations_3-8.sh")
##---- ARG4 = population map file


## Things to change WITHIN this script: 
## (1) type of input file (lines 43,45,48)
## (2) relative path to your process_radtags output (lines 43,45,48)
## (3) relative path to your stacks output (lines 43,45,48, 71, 91, 105)
## (4) ustacks model type (lines 37,39,43). !!! I USED THE BOUNDED SNP MODEL, BUT EVERYONE ELSE USES THE DEFAULT SNP MODEL. !!!
## (5) Batch number (lines 65,91,105)
#############################################################################


import sys

catfilename = sys.argv[1]

sampfilename = sys.argv[2]

newfile = open(sys.argv[3], "w")

popmapfile = sys.argv[4]


#ustacks 
newfile.write("\n"+"#ustacks"+"\n")
samplefile = open("sampleList.txt", "r")

ID_int = 1
for line in samplefile: 			#for each line in the barcode file	
	sampID = line.strip().split()[1]	#strip white space at end, split by "tab", save the second string as the sample ID
	if ID_int < 10: 
		ustacks_code = "ustacks -t gzfastq -f ../samplesT142/" + sampID + ".fq.gz -r -d -o ../stacks -i 00" + str(ID_int) + " -m 10 -M 3 -p 6 --model_type bounded" + "\n"
	elif ID_int >= 10 and ID_int < 100: 
		ustacks_code = "ustacks -t gzfastq -f ../samplesT142/" + sampID + ".fq.gz -r -d -o ../stacks -i 0" + str(ID_int) + " -m 10 -M 3 -p 6 --model_type bounded" + "\n"
								#create a line of code for ustacks that includes the new sample ID (with 1 leading 0)
	else: 
		ustacks_code = "ustacks -t gzfastq -f ../samplesT142/" + sampID + ".fq.gz -r -d -o ../stacks -i " + str(ID_int) + " -m 10 -M 3 -p 6 --model_type bounded" + "\n"
								#create a line of code for ustacks that includes the new sample ID (with no leading 0s)
	newfile.write(ustacks_code)	#append this new line of code to the output file
	ID_int += 1
samplefile.close()



####### CODE FOR USTACKS ENDS HERE #######


newfile.write("\n\n")

#cstacks
newfile.write("\n"+"#cstacks"+"\n")
catFile = open(catfilename, "r")

filestring = "cstacks -b 1 "
for line in catFile: 			#for each sample file listed in the cstacks catalog file
	sampID = line.strip()	
	if sampID.startswith("#"): 
		newstring = ""
	else: 		
		newstring = "-s ../stacks/" + sampID + " "
	filestring += newstring
catFile.close()
filestring += "-o ../stacks -n 3 -p 6"
newfile.write(filestring)



####### CODE FOR CSTACKS ENDS HERE #######



newfile.write("\n\n")

##sstacks: run by line
newfile.write("\n"+"#sstacks"+"\n")
samplefile = open(sampfilename, "r")

for line in samplefile: 			#for each line in the barcode file
	linelist=line.strip().split()[1]
	newstring = "sstacks -b 1 -c ../stacks/batch_1 -s ../stacks/" + linelist[0] + " -o ../stacks -p 6 2>> sstacks_out_b1"	#creates a new -s entry for that sample input file
	newfile.write(newstring + "\n")		# appends new -s string to "filestring"
samplefile.close()




####### CODE FOR SSTACKS ENDS HERE #######



newfile.write("\n\n")

##populations
newfile.write("populations -b 1 -P ../stacks -M " + popmapfile + " -t 36 -r 0.75 -p 4 -m 10 --genepop --fasta 2>> populations_out_batch1")



