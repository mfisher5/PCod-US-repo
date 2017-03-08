###### Generate Shell Script to Run cstacks --> populations ######

## MF 3/8/2017
## For US Cod Data



## At Command Line: python cstacks_populations_genShell_3-8 ARG1 ARG2
##---- ARG1 = samples for cstacks file 
##---- ARG2 = complete sample list file


#############################################################################


import sys

catfilename = sys.argv[1]

sampfilename = sys.argv[2]


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



newfile.write("\n\n")



##sstacks: run by line
newfile.write("\n"+"#sstacks"+"\n")
samplefile = open(sampfilename, "r")

for line in samplefile: 			#for each line in the barcode file
	linelist=line.strip().split()
	newstring = "sstacks -b 3 -c ../stacks/batch_1 -s ../stacks/" + linelist[0] + " -o ../stacks -p 6 2>> sstacks_out_b1"	#creates a new -s entry for that sample input file
	newfile.write(newstring + "\n")		# appends new -s string to "filestring"
samplefile.close()



newfile.write("\n\n")



##populations
newfile.write("populations -b 1 -P ../stacks -M PopMap.txt -t 36 -r 0.75 -p 2 -m 10 --genepop --fasta 2>> populations_out_batch1")



