#!/bin/bash

# lane 2
process_radtags -p /media/mfisher5/New\ Volume/Kristen/Data/WC05 -i gzfastq -y fastq -o /media/mfisher5/New\ Volume/Mary/Stacks/PCod-US-repo/samplesT92 -b barcodesL2_WC.txt -e sbfI -E phred33 -r -c -q -t 92 

# lane 3
process_radtags -p /media/mfisher5/New\ Volume/Kristen/Data/HS04 -i gzfastq -y fastq -o /media/mfisher5/New\ Volume/Mary/Stacks/PCod-US-repo/samplesT92 -b barcodesL3_HS.txt -e sbfI -E phred33 -r -c -q -t 92 

process_radtags -p /media/mfisher5/New\ Volume/Kristen/Data/PI04 -i gzfastq -y fastq -o /media/mfisher5/New\ Volume/Mary/Stacks/PCod-US-repo/samplesT92 -b barcodesL3_PI.txt -e sbfI -E phred33 -r -c -q -t 92 

# lane 4
process_radtags -p /media/mfisher5/New\ Volume/Kristen/Data/PS12 -i gzfastq -y fastq -o /media/mfisher5/New\ Volume/Mary/Stacks/PCod-US-repo/samplesT92 -b barcodesL4_PS.txt -e sbfI -E phred33 -r -c -q -t 92 

process_radtags -p /media/mfisher5/New\ Volume/Kristen/Data/PWS12_GS13 -i gzfastq -y fastq -o /media/mfisher5/New\ Volume/Mary/Stacks/PCod-US-repo/samplesT92 -b barcodesL4_PWSGS.txt -e sbfI -E phred33 -r -c -q -t 92 

# lane 5
process_radtags -p /media/mfisher5/New\ Volume/Kristen/Data/UP03 -i gzfastq -y fastq -o /media/mfisher5/New\ Volume/Mary/Stacks/PCod-US-repo/samplesT92 -b barcodesL5.txt -e sbfI -E phred33 -r -c -q -t 92 

