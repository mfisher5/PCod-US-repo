###### Generate Shell Script to Run pstacks --> populations ######

## MF 3/10/2017
## For US Cod Data



## At Command Line: python cstacks_populations_genShell_3-8 ARG1 ARG2
##---- ARG1 = complete sample list file


#############################################################################


import sys

sampfilename = sys.argv[1]
catfilename = sys.argv[2]

newfile = open("pstacks_populations_3-10.sh", "w")

#pstacks

newfile.write("\n"+"#pstacks"+"\n")
samplefile = open(sampfilename, "r")
ID_int = 1
for line in samplefile: 			#for each line in the barcode file	
	sampID = line.strip()	
	if ID_int < 10: 
		ustacks_code = "pstacks -t sam -f ../stacks_wgenome/" + sampID + ".sam -o ../stacks_wgenome -i 00" + str(ID_int) + " -m 10 -p 6 --model_type bounded" + "\n"
	elif ID_int >= 10 and ID_int < 100: 
		ustacks_code = "pstacks -t sam -f ../stacks_wgenome/" + sampID + ".sam -o ../stacks_wgenome -i 0" + str(ID_int) + " -m 10 -p 6 --model_type bounded" + "\n"
	else: 
		ustacks_code = "pstacks -t sam -f ../stacks_wgenome/" + sampID + ".sam -o ../stacks_wgenome -i " + str(ID_int) + " -m 10 -p 6 --model_type bounded" + "\n"
	newfile.write(ustacks_code)	#append this new line of code to the output file
	ID_int += 1
samplefile.close()

newfile.write("\n\n")



