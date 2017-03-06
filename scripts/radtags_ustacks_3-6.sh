#!/bin/bash

# lane 1
process_radtags -p /media/mfisher5/New\ Volume/Kristen/Data/KOD03 -i gzfastq -y gzfastq -o ../samplesT142 -b barcodesL1.txt -e sbfI -E phred33 -r -c -q -t 142

# lane 2
process_radtags -p /media/mfisher5/New\ Volume/Kristen/Data/AD06 -i gzfastq -y gzfastq -o ../samplesT142 -b barcodesL2_AD.txt -e sbfI -E phred33 -r -c -q -t 142

process_radtags -p /media/mfisher5/New\ Volume/Kristen/Data/WC05 -i gzfastq -y gzfastq -o ../samplesT142 -b barcodesL2_WC.txt -e sbfI -E phred33 -r -c -q -t 142

# lane 3
process_radtags -p /media/mfisher5/New\ Volume/Kristen/Data/HS04 -i gzfastq -y gzfastq -o ../samplesT142 -b barcodesL3_HS.txt -e sbfI -E phred33 -r -c -q -t 142

process_radtags -p /media/mfisher5/New\ Volume/Kristen/Data/PI04 -i gzfastq -y gzfastq -o ../samplesT142 -b barcodesL3_PI.txt -e sbfI -E phred33 -r -c -q -t 142

# lane 4
process_radtags -p /media/mfisher5/New\ Volume/Kristen/Data/PS12 -i gzfastq -y gzfastq -o ../samplesT142 -b barcodesL4_PS.txt -e sbfI -E phred33 -r -c -q -t 142

process_radtags -p /media/mfisher5/New\ Volume/Kristen/Data/PWS12_GS13 -i gzfastq -y gzfastq -o ../samplesT142 -b barcodesL4_PWSGS.txt -e sbfI -E phred33 -r -c -q -t 142

# lane 5
process_radtags -p /media/mfisher5/New\ Volume/Kristen/Data/UP03 -i gzfastq -y gzfastq -o ../samplesT142 -b barcodesL5.txt -e sbfI -E phred33 -r -c -q -t 142

echo 'Check several of the files with FASTQC. Are they trimmed to the correct length? [yes/no]'
read ANSWER
if[$ANSWER == 'no']; then
	exit 1
fi


#ustacks
ustacks -t gzfastq -f ../samplesT142/KOD03_035.fq.gz -r -d -o ../stacks -i 001 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_051.fq.gz -r -d -o ../stacks -i 002 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_052.fq.gz -r -d -o ../stacks -i 003 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_053.fq.gz -r -d -o ../stacks -i 004 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_054.fq.gz -r -d -o ../stacks -i 005 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_055.fq.gz -r -d -o ../stacks -i 006 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_056.fq.gz -r -d -o ../stacks -i 007 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_057.fq.gz -r -d -o ../stacks -i 008 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_058.fq.gz -r -d -o ../stacks -i 009 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_059.fq.gz -r -d -o ../stacks -i 010 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_060.fq.gz -r -d -o ../stacks -i 011 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_061.fq.gz -r -d -o ../stacks -i 012 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_062.fq.gz -r -d -o ../stacks -i 013 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_063.fq.gz -r -d -o ../stacks -i 014 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_064.fq.gz -r -d -o ../stacks -i 015 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_065.fq.gz -r -d -o ../stacks -i 016 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_066.fq.gz -r -d -o ../stacks -i 017 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_067.fq.gz -r -d -o ../stacks -i 018 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_068.fq.gz -r -d -o ../stacks -i 019 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_069.fq.gz -r -d -o ../stacks -i 020 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_070.fq.gz -r -d -o ../stacks -i 021 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_071.fq.gz -r -d -o ../stacks -i 022 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_072.fq.gz -r -d -o ../stacks -i 023 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_073.fq.gz -r -d -o ../stacks -i 024 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_074.fq.gz -r -d -o ../stacks -i 025 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_075.fq.gz -r -d -o ../stacks -i 026 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_076.fq.gz -r -d -o ../stacks -i 027 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_077.fq.gz -r -d -o ../stacks -i 028 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_078.fq.gz -r -d -o ../stacks -i 029 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_079.fq.gz -r -d -o ../stacks -i 030 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_080.fq.gz -r -d -o ../stacks -i 031 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_081.fq.gz -r -d -o ../stacks -i 032 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_082.fq.gz -r -d -o ../stacks -i 033 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_083.fq.gz -r -d -o ../stacks -i 034 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_084.fq.gz -r -d -o ../stacks -i 035 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_085.fq.gz -r -d -o ../stacks -i 036 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_086.fq.gz -r -d -o ../stacks -i 037 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_087.fq.gz -r -d -o ../stacks -i 038 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_088.fq.gz -r -d -o ../stacks -i 039 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_089.fq.gz -r -d -o ../stacks -i 040 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_090.fq.gz -r -d -o ../stacks -i 041 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_091.fq.gz -r -d -o ../stacks -i 042 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_092.fq.gz -r -d -o ../stacks -i 043 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_093.fq.gz -r -d -o ../stacks -i 044 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_094.fq.gz -r -d -o ../stacks -i 045 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_095.fq.gz -r -d -o ../stacks -i 046 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_096.fq.gz -r -d -o ../stacks -i 047 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/KOD03_097.fq.gz -r -d -o ../stacks -i 048 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_001.fq.gz -r -d -o ../stacks -i 049 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_002.fq.gz -r -d -o ../stacks -i 050 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_003.fq.gz -r -d -o ../stacks -i 051 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_004.fq.gz -r -d -o ../stacks -i 052 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_005.fq.gz -r -d -o ../stacks -i 053 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_006.fq.gz -r -d -o ../stacks -i 054 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_007.fq.gz -r -d -o ../stacks -i 055 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_008.fq.gz -r -d -o ../stacks -i 056 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_009.fq.gz -r -d -o ../stacks -i 057 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_010.fq.gz -r -d -o ../stacks -i 058 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_011.fq.gz -r -d -o ../stacks -i 059 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_012.fq.gz -r -d -o ../stacks -i 060 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_013.fq.gz -r -d -o ../stacks -i 061 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_014.fq.gz -r -d -o ../stacks -i 062 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_015.fq.gz -r -d -o ../stacks -i 063 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_016.fq.gz -r -d -o ../stacks -i 064 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_017.fq.gz -r -d -o ../stacks -i 065 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_018.fq.gz -r -d -o ../stacks -i 066 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_019.fq.gz -r -d -o ../stacks -i 067 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_020.fq.gz -r -d -o ../stacks -i 068 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_021.fq.gz -r -d -o ../stacks -i 069 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_022.fq.gz -r -d -o ../stacks -i 070 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_023.fq.gz -r -d -o ../stacks -i 071 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_024.fq.gz -r -d -o ../stacks -i 072 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_025.fq.gz -r -d -o ../stacks -i 073 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_026.fq.gz -r -d -o ../stacks -i 074 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_027.fq.gz -r -d -o ../stacks -i 075 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_028.fq.gz -r -d -o ../stacks -i 076 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_029.fq.gz -r -d -o ../stacks -i 077 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_030.fq.gz -r -d -o ../stacks -i 078 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_031.fq.gz -r -d -o ../stacks -i 079 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_032.fq.gz -r -d -o ../stacks -i 080 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_033.fq.gz -r -d -o ../stacks -i 081 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_034.fq.gz -r -d -o ../stacks -i 082 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_035.fq.gz -r -d -o ../stacks -i 083 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_036.fq.gz -r -d -o ../stacks -i 084 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_037.fq.gz -r -d -o ../stacks -i 085 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_038.fq.gz -r -d -o ../stacks -i 086 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_039.fq.gz -r -d -o ../stacks -i 087 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_040.fq.gz -r -d -o ../stacks -i 088 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_041.fq.gz -r -d -o ../stacks -i 089 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_042.fq.gz -r -d -o ../stacks -i 090 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_043.fq.gz -r -d -o ../stacks -i 091 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_044.fq.gz -r -d -o ../stacks -i 092 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_045.fq.gz -r -d -o ../stacks -i 093 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_046.fq.gz -r -d -o ../stacks -i 094 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_047.fq.gz -r -d -o ../stacks -i 095 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_048.fq.gz -r -d -o ../stacks -i 096 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_001.fq.gz -r -d -o ../stacks -i 097 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_002.fq.gz -r -d -o ../stacks -i 098 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_003.fq.gz -r -d -o ../stacks -i 099 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_004.fq.gz -r -d -o ../stacks -i 100 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_005.fq.gz -r -d -o ../stacks -i 101 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_006.fq.gz -r -d -o ../stacks -i 102 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_007.fq.gz -r -d -o ../stacks -i 103 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_008.fq.gz -r -d -o ../stacks -i 104 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_009.fq.gz -r -d -o ../stacks -i 105 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_010.fq.gz -r -d -o ../stacks -i 106 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_011.fq.gz -r -d -o ../stacks -i 107 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_012.fq.gz -r -d -o ../stacks -i 108 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_013.fq.gz -r -d -o ../stacks -i 109 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_014.fq.gz -r -d -o ../stacks -i 110 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_015.fq.gz -r -d -o ../stacks -i 111 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_016.fq.gz -r -d -o ../stacks -i 112 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_017.fq.gz -r -d -o ../stacks -i 113 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_018.fq.gz -r -d -o ../stacks -i 114 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_019.fq.gz -r -d -o ../stacks -i 115 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_020.fq.gz -r -d -o ../stacks -i 116 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_021.fq.gz -r -d -o ../stacks -i 117 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_022.fq.gz -r -d -o ../stacks -i 118 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_023.fq.gz -r -d -o ../stacks -i 119 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_024.fq.gz -r -d -o ../stacks -i 120 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_025.fq.gz -r -d -o ../stacks -i 121 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_026.fq.gz -r -d -o ../stacks -i 122 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_027.fq.gz -r -d -o ../stacks -i 123 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_028.fq.gz -r -d -o ../stacks -i 124 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_029.fq.gz -r -d -o ../stacks -i 125 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_030.fq.gz -r -d -o ../stacks -i 126 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_031.fq.gz -r -d -o ../stacks -i 127 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_032.fq.gz -r -d -o ../stacks -i 128 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_033.fq.gz -r -d -o ../stacks -i 129 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_034.fq.gz -r -d -o ../stacks -i 130 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_035.fq.gz -r -d -o ../stacks -i 131 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_036.fq.gz -r -d -o ../stacks -i 132 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_037.fq.gz -r -d -o ../stacks -i 133 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_038.fq.gz -r -d -o ../stacks -i 134 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_039.fq.gz -r -d -o ../stacks -i 135 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_040.fq.gz -r -d -o ../stacks -i 136 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_041.fq.gz -r -d -o ../stacks -i 137 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_042.fq.gz -r -d -o ../stacks -i 138 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_043.fq.gz -r -d -o ../stacks -i 139 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_044.fq.gz -r -d -o ../stacks -i 140 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_045.fq.gz -r -d -o ../stacks -i 141 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_046.fq.gz -r -d -o ../stacks -i 142 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_047.fq.gz -r -d -o ../stacks -i 143 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/WC05_048.fq.gz -r -d -o ../stacks -i 144 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_001.fq.gz -r -d -o ../stacks -i 145 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_002.fq.gz -r -d -o ../stacks -i 146 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_003.fq.gz -r -d -o ../stacks -i 147 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_004.fq.gz -r -d -o ../stacks -i 148 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_005.fq.gz -r -d -o ../stacks -i 149 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_006.fq.gz -r -d -o ../stacks -i 150 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_007.fq.gz -r -d -o ../stacks -i 151 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_008.fq.gz -r -d -o ../stacks -i 152 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_009.fq.gz -r -d -o ../stacks -i 153 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_010.fq.gz -r -d -o ../stacks -i 154 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_011.fq.gz -r -d -o ../stacks -i 155 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_012.fq.gz -r -d -o ../stacks -i 156 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_013.fq.gz -r -d -o ../stacks -i 157 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_014.fq.gz -r -d -o ../stacks -i 158 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_015.fq.gz -r -d -o ../stacks -i 159 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_016.fq.gz -r -d -o ../stacks -i 160 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_017.fq.gz -r -d -o ../stacks -i 161 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_018.fq.gz -r -d -o ../stacks -i 162 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_019.fq.gz -r -d -o ../stacks -i 163 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_020.fq.gz -r -d -o ../stacks -i 164 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_021.fq.gz -r -d -o ../stacks -i 165 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_022.fq.gz -r -d -o ../stacks -i 166 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_023.fq.gz -r -d -o ../stacks -i 167 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_024.fq.gz -r -d -o ../stacks -i 168 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_025.fq.gz -r -d -o ../stacks -i 169 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_026.fq.gz -r -d -o ../stacks -i 170 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_027.fq.gz -r -d -o ../stacks -i 171 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_028.fq.gz -r -d -o ../stacks -i 172 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_029.fq.gz -r -d -o ../stacks -i 173 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_030.fq.gz -r -d -o ../stacks -i 174 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_031.fq.gz -r -d -o ../stacks -i 175 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_032.fq.gz -r -d -o ../stacks -i 176 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_033.fq.gz -r -d -o ../stacks -i 177 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_034.fq.gz -r -d -o ../stacks -i 178 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_035.fq.gz -r -d -o ../stacks -i 179 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_036.fq.gz -r -d -o ../stacks -i 180 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_037.fq.gz -r -d -o ../stacks -i 181 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_038.fq.gz -r -d -o ../stacks -i 182 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_039.fq.gz -r -d -o ../stacks -i 183 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_040.fq.gz -r -d -o ../stacks -i 184 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_041.fq.gz -r -d -o ../stacks -i 185 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_042.fq.gz -r -d -o ../stacks -i 186 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_043.fq.gz -r -d -o ../stacks -i 187 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_044.fq.gz -r -d -o ../stacks -i 188 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_045.fq.gz -r -d -o ../stacks -i 189 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_046.fq.gz -r -d -o ../stacks -i 190 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_047.fq.gz -r -d -o ../stacks -i 191 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/AD06_048.fq.gz -r -d -o ../stacks -i 192 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_001.fq.gz -r -d -o ../stacks -i 193 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_002.fq.gz -r -d -o ../stacks -i 194 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_003.fq.gz -r -d -o ../stacks -i 195 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_004.fq.gz -r -d -o ../stacks -i 196 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_005.fq.gz -r -d -o ../stacks -i 197 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_006.fq.gz -r -d -o ../stacks -i 198 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_007.fq.gz -r -d -o ../stacks -i 199 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_008.fq.gz -r -d -o ../stacks -i 200 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_009.fq.gz -r -d -o ../stacks -i 201 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_010.fq.gz -r -d -o ../stacks -i 202 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_011.fq.gz -r -d -o ../stacks -i 203 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_012.fq.gz -r -d -o ../stacks -i 204 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_013.fq.gz -r -d -o ../stacks -i 205 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_014.fq.gz -r -d -o ../stacks -i 206 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_015.fq.gz -r -d -o ../stacks -i 207 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_016.fq.gz -r -d -o ../stacks -i 208 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_017.fq.gz -r -d -o ../stacks -i 209 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_018.fq.gz -r -d -o ../stacks -i 210 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_019.fq.gz -r -d -o ../stacks -i 211 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_020.fq.gz -r -d -o ../stacks -i 212 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_021.fq.gz -r -d -o ../stacks -i 213 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_022.fq.gz -r -d -o ../stacks -i 214 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_023.fq.gz -r -d -o ../stacks -i 215 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_024.fq.gz -r -d -o ../stacks -i 216 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_025.fq.gz -r -d -o ../stacks -i 217 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_026.fq.gz -r -d -o ../stacks -i 218 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_027.fq.gz -r -d -o ../stacks -i 219 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_028.fq.gz -r -d -o ../stacks -i 220 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_029.fq.gz -r -d -o ../stacks -i 221 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_030.fq.gz -r -d -o ../stacks -i 222 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_031.fq.gz -r -d -o ../stacks -i 223 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_032.fq.gz -r -d -o ../stacks -i 224 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_033.fq.gz -r -d -o ../stacks -i 225 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_034.fq.gz -r -d -o ../stacks -i 226 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_035.fq.gz -r -d -o ../stacks -i 227 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_036.fq.gz -r -d -o ../stacks -i 228 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_037.fq.gz -r -d -o ../stacks -i 229 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_038.fq.gz -r -d -o ../stacks -i 230 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_039.fq.gz -r -d -o ../stacks -i 231 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_040.fq.gz -r -d -o ../stacks -i 232 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_041.fq.gz -r -d -o ../stacks -i 233 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_042.fq.gz -r -d -o ../stacks -i 234 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_043.fq.gz -r -d -o ../stacks -i 235 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_044.fq.gz -r -d -o ../stacks -i 236 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_045.fq.gz -r -d -o ../stacks -i 237 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_046.fq.gz -r -d -o ../stacks -i 238 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_047.fq.gz -r -d -o ../stacks -i 239 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/HS04_048.fq.gz -r -d -o ../stacks -i 240 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_001.fq.gz -r -d -o ../stacks -i 241 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_002.fq.gz -r -d -o ../stacks -i 242 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_003.fq.gz -r -d -o ../stacks -i 243 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_004.fq.gz -r -d -o ../stacks -i 244 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_005.fq.gz -r -d -o ../stacks -i 245 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_006.fq.gz -r -d -o ../stacks -i 246 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_007.fq.gz -r -d -o ../stacks -i 247 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_008.fq.gz -r -d -o ../stacks -i 248 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_009.fq.gz -r -d -o ../stacks -i 249 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_010.fq.gz -r -d -o ../stacks -i 250 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_011.fq.gz -r -d -o ../stacks -i 251 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_012.fq.gz -r -d -o ../stacks -i 252 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_013.fq.gz -r -d -o ../stacks -i 253 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_014.fq.gz -r -d -o ../stacks -i 254 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_015.fq.gz -r -d -o ../stacks -i 255 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_016.fq.gz -r -d -o ../stacks -i 256 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_017.fq.gz -r -d -o ../stacks -i 257 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_018.fq.gz -r -d -o ../stacks -i 258 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_019.fq.gz -r -d -o ../stacks -i 259 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_020.fq.gz -r -d -o ../stacks -i 260 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_021.fq.gz -r -d -o ../stacks -i 261 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_022.fq.gz -r -d -o ../stacks -i 262 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_023.fq.gz -r -d -o ../stacks -i 263 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_024.fq.gz -r -d -o ../stacks -i 264 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_025.fq.gz -r -d -o ../stacks -i 265 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_026.fq.gz -r -d -o ../stacks -i 266 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_027.fq.gz -r -d -o ../stacks -i 267 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_028.fq.gz -r -d -o ../stacks -i 268 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_029.fq.gz -r -d -o ../stacks -i 269 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_030.fq.gz -r -d -o ../stacks -i 270 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_031.fq.gz -r -d -o ../stacks -i 271 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_032.fq.gz -r -d -o ../stacks -i 272 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_033.fq.gz -r -d -o ../stacks -i 273 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_034.fq.gz -r -d -o ../stacks -i 274 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_035.fq.gz -r -d -o ../stacks -i 275 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_036.fq.gz -r -d -o ../stacks -i 276 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_037.fq.gz -r -d -o ../stacks -i 277 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_038.fq.gz -r -d -o ../stacks -i 278 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_039.fq.gz -r -d -o ../stacks -i 279 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_040.fq.gz -r -d -o ../stacks -i 280 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_041.fq.gz -r -d -o ../stacks -i 281 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_042.fq.gz -r -d -o ../stacks -i 282 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_043.fq.gz -r -d -o ../stacks -i 283 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_044.fq.gz -r -d -o ../stacks -i 284 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_045.fq.gz -r -d -o ../stacks -i 285 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_046.fq.gz -r -d -o ../stacks -i 286 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_047.fq.gz -r -d -o ../stacks -i 287 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PI04_048.fq.gz -r -d -o ../stacks -i 288 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_008.fq.gz -r -d -o ../stacks -i 289 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_048.fq.gz -r -d -o ../stacks -i 290 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_031.fq.gz -r -d -o ../stacks -i 291 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_036.fq.gz -r -d -o ../stacks -i 292 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_030.fq.gz -r -d -o ../stacks -i 293 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_006.fq.gz -r -d -o ../stacks -i 294 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_016.fq.gz -r -d -o ../stacks -i 295 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_033.fq.gz -r -d -o ../stacks -i 296 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_015.fq.gz -r -d -o ../stacks -i 297 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_014.fq.gz -r -d -o ../stacks -i 298 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_044.fq.gz -r -d -o ../stacks -i 299 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_037.fq.gz -r -d -o ../stacks -i 300 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_004.fq.gz -r -d -o ../stacks -i 301 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_040.fq.gz -r -d -o ../stacks -i 302 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_023.fq.gz -r -d -o ../stacks -i 303 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_042.fq.gz -r -d -o ../stacks -i 304 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_024.fq.gz -r -d -o ../stacks -i 305 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_034.fq.gz -r -d -o ../stacks -i 306 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_003.fq.gz -r -d -o ../stacks -i 307 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_002.fq.gz -r -d -o ../stacks -i 308 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_001.fq.gz -r -d -o ../stacks -i 309 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_041.fq.gz -r -d -o ../stacks -i 310 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_013.fq.gz -r -d -o ../stacks -i 311 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_027.fq.gz -r -d -o ../stacks -i 312 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_039.fq.gz -r -d -o ../stacks -i 313 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_020.fq.gz -r -d -o ../stacks -i 314 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_012.fq.gz -r -d -o ../stacks -i 315 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_029.fq.gz -r -d -o ../stacks -i 316 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_022.fq.gz -r -d -o ../stacks -i 317 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_007.fq.gz -r -d -o ../stacks -i 318 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_046.fq.gz -r -d -o ../stacks -i 319 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_043.fq.gz -r -d -o ../stacks -i 320 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_045.fq.gz -r -d -o ../stacks -i 321 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_011.fq.gz -r -d -o ../stacks -i 322 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_028.fq.gz -r -d -o ../stacks -i 323 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_021.fq.gz -r -d -o ../stacks -i 324 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_026.fq.gz -r -d -o ../stacks -i 325 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_010.fq.gz -r -d -o ../stacks -i 326 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_025.fq.gz -r -d -o ../stacks -i 327 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_019.fq.gz -r -d -o ../stacks -i 328 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_038.fq.gz -r -d -o ../stacks -i 329 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_017.fq.gz -r -d -o ../stacks -i 330 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_047.fq.gz -r -d -o ../stacks -i 331 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_032.fq.gz -r -d -o ../stacks -i 332 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_018.fq.gz -r -d -o ../stacks -i 333 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_035.fq.gz -r -d -o ../stacks -i 334 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_005.fq.gz -r -d -o ../stacks -i 335 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_009.fq.gz -r -d -o ../stacks -i 336 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_008.fq.gz -r -d -o ../stacks -i 337 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_048.fq.gz -r -d -o ../stacks -i 338 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_031.fq.gz -r -d -o ../stacks -i 339 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_036.fq.gz -r -d -o ../stacks -i 340 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_030.fq.gz -r -d -o ../stacks -i 341 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_006.fq.gz -r -d -o ../stacks -i 342 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_016.fq.gz -r -d -o ../stacks -i 343 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_033.fq.gz -r -d -o ../stacks -i 344 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_015.fq.gz -r -d -o ../stacks -i 345 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_014.fq.gz -r -d -o ../stacks -i 346 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_044.fq.gz -r -d -o ../stacks -i 347 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_037.fq.gz -r -d -o ../stacks -i 348 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_004.fq.gz -r -d -o ../stacks -i 349 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_040.fq.gz -r -d -o ../stacks -i 350 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_023.fq.gz -r -d -o ../stacks -i 351 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_042.fq.gz -r -d -o ../stacks -i 352 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_024.fq.gz -r -d -o ../stacks -i 353 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_034.fq.gz -r -d -o ../stacks -i 354 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_003.fq.gz -r -d -o ../stacks -i 355 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_002.fq.gz -r -d -o ../stacks -i 356 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_001.fq.gz -r -d -o ../stacks -i 357 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_041.fq.gz -r -d -o ../stacks -i 358 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_013.fq.gz -r -d -o ../stacks -i 359 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_027.fq.gz -r -d -o ../stacks -i 360 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_039.fq.gz -r -d -o ../stacks -i 361 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_020.fq.gz -r -d -o ../stacks -i 362 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_012.fq.gz -r -d -o ../stacks -i 363 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_029.fq.gz -r -d -o ../stacks -i 364 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_022.fq.gz -r -d -o ../stacks -i 365 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_007.fq.gz -r -d -o ../stacks -i 366 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_046.fq.gz -r -d -o ../stacks -i 367 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_043.fq.gz -r -d -o ../stacks -i 368 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_045.fq.gz -r -d -o ../stacks -i 369 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_011.fq.gz -r -d -o ../stacks -i 370 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_028.fq.gz -r -d -o ../stacks -i 371 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_021.fq.gz -r -d -o ../stacks -i 372 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_026.fq.gz -r -d -o ../stacks -i 373 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_010.fq.gz -r -d -o ../stacks -i 374 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_025.fq.gz -r -d -o ../stacks -i 375 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_019.fq.gz -r -d -o ../stacks -i 376 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_038.fq.gz -r -d -o ../stacks -i 377 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_017.fq.gz -r -d -o ../stacks -i 378 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_047.fq.gz -r -d -o ../stacks -i 379 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_032.fq.gz -r -d -o ../stacks -i 380 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_018.fq.gz -r -d -o ../stacks -i 381 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_035.fq.gz -r -d -o ../stacks -i 382 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_005.fq.gz -r -d -o ../stacks -i 383 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PS12_009.fq.gz -r -d -o ../stacks -i 384 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_001.fq.gz -r -d -o ../stacks -i 385 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_002.fq.gz -r -d -o ../stacks -i 386 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_003.fq.gz -r -d -o ../stacks -i 387 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_004.fq.gz -r -d -o ../stacks -i 388 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_005.fq.gz -r -d -o ../stacks -i 389 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_006.fq.gz -r -d -o ../stacks -i 390 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_007.fq.gz -r -d -o ../stacks -i 391 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_008.fq.gz -r -d -o ../stacks -i 392 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_009.fq.gz -r -d -o ../stacks -i 393 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_010.fq.gz -r -d -o ../stacks -i 394 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_011.fq.gz -r -d -o ../stacks -i 395 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_012.fq.gz -r -d -o ../stacks -i 396 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_013.fq.gz -r -d -o ../stacks -i 397 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_014.fq.gz -r -d -o ../stacks -i 398 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_015.fq.gz -r -d -o ../stacks -i 399 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_016.fq.gz -r -d -o ../stacks -i 400 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/GS13_017.fq.gz -r -d -o ../stacks -i 401 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_002.fq.gz -r -d -o ../stacks -i 402 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_003.fq.gz -r -d -o ../stacks -i 403 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_005.fq.gz -r -d -o ../stacks -i 404 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_006.fq.gz -r -d -o ../stacks -i 405 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_009.fq.gz -r -d -o ../stacks -i 406 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_010.fq.gz -r -d -o ../stacks -i 407 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_011.fq.gz -r -d -o ../stacks -i 408 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_014.fq.gz -r -d -o ../stacks -i 409 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_015.fq.gz -r -d -o ../stacks -i 410 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_016.fq.gz -r -d -o ../stacks -i 411 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_017.fq.gz -r -d -o ../stacks -i 412 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_018.fq.gz -r -d -o ../stacks -i 413 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_021.fq.gz -r -d -o ../stacks -i 414 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_022.fq.gz -r -d -o ../stacks -i 415 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_023.fq.gz -r -d -o ../stacks -i 416 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_063.fq.gz -r -d -o ../stacks -i 417 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_075.fq.gz -r -d -o ../stacks -i 418 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_079.fq.gz -r -d -o ../stacks -i 419 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_094.fq.gz -r -d -o ../stacks -i 420 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_095.fq.gz -r -d -o ../stacks -i 421 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_096.fq.gz -r -d -o ../stacks -i 422 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_097.fq.gz -r -d -o ../stacks -i 423 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_131.fq.gz -r -d -o ../stacks -i 424 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/PWS12_133.fq.gz -r -d -o ../stacks -i 425 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_001.fq.gz -r -d -o ../stacks -i 426 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_009.fq.gz -r -d -o ../stacks -i 427 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_017.fq.gz -r -d -o ../stacks -i 428 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_025.fq.gz -r -d -o ../stacks -i 429 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_033.fq.gz -r -d -o ../stacks -i 430 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_041.fq.gz -r -d -o ../stacks -i 431 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_002.fq.gz -r -d -o ../stacks -i 432 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_010.fq.gz -r -d -o ../stacks -i 433 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_018.fq.gz -r -d -o ../stacks -i 434 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_026.fq.gz -r -d -o ../stacks -i 435 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_034.fq.gz -r -d -o ../stacks -i 436 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_042.fq.gz -r -d -o ../stacks -i 437 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_003.fq.gz -r -d -o ../stacks -i 438 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_011.fq.gz -r -d -o ../stacks -i 439 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_019.fq.gz -r -d -o ../stacks -i 440 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_027.fq.gz -r -d -o ../stacks -i 441 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_035.fq.gz -r -d -o ../stacks -i 442 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_043.fq.gz -r -d -o ../stacks -i 443 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_004.fq.gz -r -d -o ../stacks -i 444 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_012.fq.gz -r -d -o ../stacks -i 445 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_020.fq.gz -r -d -o ../stacks -i 446 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_028.fq.gz -r -d -o ../stacks -i 447 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_036.fq.gz -r -d -o ../stacks -i 448 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_044.fq.gz -r -d -o ../stacks -i 449 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_005.fq.gz -r -d -o ../stacks -i 450 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_013.fq.gz -r -d -o ../stacks -i 451 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_021.fq.gz -r -d -o ../stacks -i 452 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_029.fq.gz -r -d -o ../stacks -i 453 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_037.fq.gz -r -d -o ../stacks -i 454 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_045.fq.gz -r -d -o ../stacks -i 455 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_006.fq.gz -r -d -o ../stacks -i 456 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_014.fq.gz -r -d -o ../stacks -i 457 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_022.fq.gz -r -d -o ../stacks -i 458 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_030.fq.gz -r -d -o ../stacks -i 459 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_038.fq.gz -r -d -o ../stacks -i 460 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_046.fq.gz -r -d -o ../stacks -i 461 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_007.fq.gz -r -d -o ../stacks -i 462 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_015.fq.gz -r -d -o ../stacks -i 463 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_023.fq.gz -r -d -o ../stacks -i 464 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_031.fq.gz -r -d -o ../stacks -i 465 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_039.fq.gz -r -d -o ../stacks -i 466 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_047.fq.gz -r -d -o ../stacks -i 467 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_008.fq.gz -r -d -o ../stacks -i 468 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_016.fq.gz -r -d -o ../stacks -i 469 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_024.fq.gz -r -d -o ../stacks -i 470 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_032.fq.gz -r -d -o ../stacks -i 471 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_040.fq.gz -r -d -o ../stacks -i 472 -m 10 -M 3 -p 6 --model_type bounded
ustacks -t gzfastq -f ../samplesT142/UP03_048.fq.gz -r -d -o ../stacks -i 473 -m 10 -M 3 -p 6 --model_type bounded



zcat ../samplesT142/KOD03_035.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_051.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_052.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_053.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_054.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_055.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_056.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_057.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_058.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_059.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_060.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_061.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_062.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_063.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_064.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_065.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_066.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_067.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_068.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_069.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_070.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_071.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_072.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_073.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_074.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_075.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_076.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_077.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_078.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_079.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_080.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_081.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_082.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_083.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_084.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_085.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_086.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_087.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_088.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_089.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_090.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_091.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_092.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_093.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_094.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_095.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_096.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/KOD03_097.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_001.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_002.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_003.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_004.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_005.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_006.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_007.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_008.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_009.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_010.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_011.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_012.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_013.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_014.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_015.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_016.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_017.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_018.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_019.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_020.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_021.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_022.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_023.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_024.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_025.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_026.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_027.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_028.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_029.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_030.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_031.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_032.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_033.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_034.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_035.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_036.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_037.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_038.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_039.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_040.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_041.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_042.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_043.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_044.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_045.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_046.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_047.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_048.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_001.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_002.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_003.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_004.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_005.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_006.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_007.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_008.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_009.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_010.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_011.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_012.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_013.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_014.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_015.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_016.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_017.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_018.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_019.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_020.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_021.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_022.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_023.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_024.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_025.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_026.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_027.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_028.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_029.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_030.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_031.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_032.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_033.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_034.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_035.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_036.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_037.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_038.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_039.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_040.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_041.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_042.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_043.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_044.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_045.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_046.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_047.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/WC05_048.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_001.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_002.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_003.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_004.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_005.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_006.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_007.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_008.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_009.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_010.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_011.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_012.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_013.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_014.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_015.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_016.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_017.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_018.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_019.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_020.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_021.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_022.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_023.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_024.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_025.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_026.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_027.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_028.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_029.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_030.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_031.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_032.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_033.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_034.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_035.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_036.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_037.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_038.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_039.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_040.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_041.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_042.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_043.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_044.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_045.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_046.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_047.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/AD06_048.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_001.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_002.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_003.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_004.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_005.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_006.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_007.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_008.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_009.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_010.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_011.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_012.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_013.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_014.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_015.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_016.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_017.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_018.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_019.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_020.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_021.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_022.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_023.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_024.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_025.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_026.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_027.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_028.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_029.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_030.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_031.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_032.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_033.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_034.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_035.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_036.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_037.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_038.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_039.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_040.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_041.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_042.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_043.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_044.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_045.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_046.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_047.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/HS04_048.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_001.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_002.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_003.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_004.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_005.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_006.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_007.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_008.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_009.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_010.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_011.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_012.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_013.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_014.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_015.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_016.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_017.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_018.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_019.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_020.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_021.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_022.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_023.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_024.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_025.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_026.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_027.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_028.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_029.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_030.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_031.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_032.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_033.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_034.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_035.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_036.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_037.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_038.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_039.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_040.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_041.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_042.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_043.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_044.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_045.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_046.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_047.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PI04_048.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_008.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_048.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_031.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_036.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_030.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_006.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_016.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_033.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_015.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_014.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_044.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_037.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_004.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_040.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_023.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_042.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_024.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_034.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_003.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_002.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_001.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_041.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_013.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_027.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_039.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_020.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_012.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_029.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_022.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_007.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_046.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_043.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_045.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_011.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_028.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_021.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_026.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_010.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_025.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_019.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_038.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_017.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_047.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_032.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_018.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_035.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_005.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_009.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_008.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_048.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_031.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_036.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_030.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_006.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_016.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_033.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_015.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_014.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_044.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_037.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_004.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_040.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_023.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_042.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_024.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_034.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_003.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_002.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_001.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_041.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_013.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_027.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_039.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_020.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_012.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_029.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_022.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_007.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_046.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_043.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_045.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_011.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_028.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_021.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_026.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_010.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_025.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_019.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_038.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_017.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_047.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_032.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_018.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_035.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_005.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PS12_009.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_001.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_002.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_003.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_004.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_005.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_006.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_007.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_008.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_009.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_010.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_011.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_012.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_013.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_014.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_015.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_016.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/GS13_017.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_002.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_003.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_005.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_006.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_009.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_010.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_011.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_014.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_015.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_016.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_017.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_018.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_021.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_022.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_023.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_063.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_075.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_079.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_094.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_095.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_096.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_097.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_131.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/PWS12_133.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_001.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_009.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_017.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_025.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_033.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_041.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_002.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_010.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_018.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_026.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_034.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_042.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_003.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_011.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_019.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_027.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_035.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_043.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_004.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_012.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_020.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_028.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_036.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_044.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_005.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_013.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_021.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_029.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_037.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_045.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_006.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_014.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_022.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_030.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_038.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_046.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_007.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_015.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_023.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_031.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_039.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_047.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_008.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_016.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_024.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_032.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_040.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt

zcat ../samplesT142/UP03_048.fq.gz | awk '((NR-2)%4==0){read=$1;total++;count[read]++}END{for(read in count){if(!max||count[read]>max) {max=count[read];maxRead=read};if(count[read]==1){unique++}};print total}' >> FastQsequenceCounts.txt
