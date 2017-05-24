### This script creates a shell to unzip and count the number of loci in each ustacks tags file ###

import argparse 
import gzip 

parser = argparse.ArgumentParser(description="count number of consensus seqs in .tags files")

parser.add_argument("-s", "--samples", help="file with list of samples")
parser.add_argument("-d", "--directory", help="stacks directory with tags files; can be local path, don't include final '/'")
parser.add_argument("-sh", "--shell", help="name of the shell file you want to create")

args = parser.parse_args()

samplefile= open(args.samples, "r")
shell = open(args.shell, "w")
shell.write("#!/bin/bash\n")


for line in samplefile:
	sample = line.strip().split()[0]
	filename = args.directory + "/" + sample + ".tags.tsv.gz"
	shell.write("zcat " + filename + "| python countloci_single_tagsfile.py\n")

samplefile.close()

shell.close()


