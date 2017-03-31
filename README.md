## U.S. Populations of Pacific cod ##

### Rerun of data analysis ###

<br>
**Populations:** 

Kodiak 2003

Adak 2006

Washington Coast 2005

Hecate Strait 2004

Pribilof Islands 2004

Puget Sound 2012

Prince William Sound 2012

Strait of Georgia 2013

Unimak Pass 2003



<br>

### Contents

**1) Analyses**


**2) Notebooks**

- `Pcod Raw Data.ipynb`: contains locations of the raw data for the above populations, locations of barcodes file, and links to FastQC files in an evernote notebook. 
- `Stacks Pipeline batch 1-1`: this runs process-radtags through populations, and creates the reference genome. 
- `Stacks Pipeline batch 1-2`: this aligns all individual .sam files to the reference genome, then run stacks from pstacks through populations. It also includes all post-stacks filtering steps
- `Stacks Pipeline batch 1-rerun of extra filtering`: There appears to be a bottleneck at Marine's genotypes-verif script and the MAF filtering steps, when the genepop goes from containing 9,717 loci (a normal amount) to ~3,000 loci. I explored the cause of this by looking at missing data across individuals, then removed the individuals with >20% missing data from analyses and reran filtering, starting from MAF script. 
- `Stacks Pipeline batch 1- pipeline meristics`: This notebook will keep track of and visualize the number of reads per individual, number of loci per individual, number of loci in the catalog or reference genome, etc.
- `Stacks Pipeline batch 1-data visualization`: This notebook includes data exploration through the stacks pipeline as well as some early popgen visualizations 
- `Stacks Pipeline batch 1- data visualization without genome`: This notebook repeats some of the visualizations done in the notebook above, but using the filtered genepop file produced from the ustacks run of stacks pipeline. I was mostly interested to see what the read depth v. heterozygosity looks like before we use a reference genome for filtering.
- `Untitled`: ignore this! it's for outreach`


**3) Raw_data**


**4) SamplesT92**


**5) Scripts**


**6) Stacks**


**7) Stacks_wgenome**

