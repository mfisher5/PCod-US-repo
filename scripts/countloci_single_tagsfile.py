### This script counts the number of loci in a ustacks tags file, piped from gzip ###

import sys

outfile = open("ustacks_locicounts.txt", "a")

loci_count = 0
print "counting loci..."


for line in sys.stdin:
	if "consensus" in line:
		loci_count += 1
print str(loci_count), " loci counted\n\n"

outfile.write(str(loci_count)+"\n")

outfile.close()


