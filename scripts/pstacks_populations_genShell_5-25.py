###### Generate Shell Script to Run pstacks --> populations ######

## MF 3/10/2017 Edited 5/25/2017
## For US Cod Data



## At Command Line: python cstacks_populations_genShell_3-8 ARG1 ARG2
##---- ARG1 = complete sample list file (population map)
##---- ARG2 = sample list for building cstacks catalog


#############################################################################


import sys

sampfilename = sys.argv[1]
catfilename = sys.argv[2]

newfile = open("pstacks_populations_5-25.sh", "w")

#pstacks

newfile.write("\n"+"#pstacks"+"\n")
samplefile = open(sampfilename, "r")
ID_int = 1
for line in samplefile: 			#for each line in the barcode file	
	sampID = line.strip().split()[0]	
	if ID_int < 10: 
		ustacks_code = "pstacks -t sam -f ../stacks_b2/" + sampID + ".sam -o ../stacks_b2_wgenome -i 00" + str(ID_int) + " -m 10 -p 6 --model_type bounded 2>> pstacks_out_b2_wgenome" + "\n"
	elif ID_int >= 10 and ID_int < 100: 
		ustacks_code = "pstacks -t sam -f ../stacks_b2/" + sampID + ".sam -o ../stacks_b2_wgenome -i 0" + str(ID_int) + " -m 10 -p 6 --model_type bounded 2>> pstacks_out_b2_wgenome" + "\n"
	else: 
		ustacks_code = "pstacks -t sam -f ../stacks_b2/" + sampID + ".sam -o ../stacks_b2_wgenome -i " + str(ID_int) + " -m 10 -p 6 --model_type bounded 2>> pstacks_out_b2_wgenome" + "\n"
	newfile.write(ustacks_code)	#append this new line of code to the output file
	ID_int += 1
samplefile.close()

newfile.write("\n\n")




#cstacks
newfile.write("\n"+"#cstacks"+"\n")
catFile = open(catfilename, "r")

filestring = "cstacks -b 2 "
for line in catFile: 			#for each sample file listed in the cstacks catalog file
	sampID = line.strip()	
	if sampID.startswith("#"): 
		newstring = ""
	else: 		
		newstring = "-s ../stacks_b2_wgenome/" + sampID + " "
	filestring += newstring
catFile.close()
filestring += "-o ../stacks_b2_wgenome -g -p 6 2>> cstacks_out_b2_wgenome"
newfile.write(filestring)



newfile.write("\n\n")



##sstacks: run by line
newfile.write("\n"+"#sstacks"+"\n")
samplefile = open(sampfilename, "r")

for line in samplefile: 			#for each line in the barcode file
	linelist=line.strip().split()
	newstring = "sstacks -b 2 -c ../stacks_b2_wgenome/batch_2 -s ../stacks_b2_wgenome/" + linelist[0] + " -o ../stacks_b2_wgenome -p 6 2>> sstacks_out_b2_wgenome"	#creates a new -s entry for that sample input file
	newfile.write(newstring + "\n")		# appends new -s string to "filestring"
samplefile.close()



newfile.write("\n\n")



##populations
newfile.write("populations -b 2 -P ../stacks_b2_wgenome -M PopMap.txt -t 36 -r 0.75 -p 4 -m 10 --genepop --fasta 2>> populations_out_batch2_wgenome")



