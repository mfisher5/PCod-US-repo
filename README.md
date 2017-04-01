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

**1) Analyses**: contains data exploration / visualization from stacks pipeline steps, as well as popgen analyses (i.e. genepop and hierfstat) scripts and output.

<br>

**2) Notebooks**

- `Pcod Raw Data.ipynb`: contains locations of the raw data for the above populations, locations of barcodes file, and links to FastQC files in an evernote notebook. 

- `Stacks Pipeline batch 1-1`: this runs process-radtags through populations, and creates the reference genome. 

- `Stacks Pipeline batch 1-2`: this aligns all individual .sam files to the reference genome, then run stacks from pstacks through populations. It also includes all post-stacks filtering steps

- `Stacks Pipeline batch 1-rerun of extra filtering`: There appears to be a bottleneck at Marine's genotypes-verif script and the MAF filtering steps, when the genepop goes from containing 9,717 loci (a normal amount) to ~3,000 loci. I explored the cause of this by looking at missing data across individuals, then removed the individuals with >20% missing data from analyses and reran filtering, starting from MAF script. 

- `Stacks Pipeline batch 1- pipeline meristics`: This notebook will keep track of and visualize the number of reads per individual, number of loci per individual, number of loci in the catalog or reference genome, etc.

- `Stacks Pipeline batch 1-data visualization`: This notebook includes data exploration through the stacks pipeline as well as some early popgen visualizations 

- `Stacks Pipeline batch 1- data visualization without genome`: This notebook repeats some of the visualizations done in the notebook above, but using the filtered genepop file produced from the ustacks run of stacks pipeline. I was mostly interested to see what the read depth v. heterozygosity looks like before we use a reference genome for filtering.

- `Untitled`: ignore this! it's for outreach


<br>

**3) Raw_data**: Contains FastQC files for two individuals per population (post- process radtags, so sequences have been trimmed and quality filtered)

<br>

**4) SamplesT92**: Contains process radtags output files, demultiplexed and trimmed to 92 base pairs. Also has the process_radtags log and terminal standard error output saved as text files, and the python scripts created by Dan Drinan to compare individual heterozygosity to read depth. 

<br>

**5) Scripts**: Contains (1) all scripts run in Jupyter notebooks to process data, (2) barcode files, and (3) lists of samples for cstacks, script generation. 
- `Post-Stacks Filtering/`: folder contains all scripts needed to complete filtering steps. These scripts are designed to be run from a single shell ("genBASH_finalfilters.py"), but here were run separately to test that they worked correctly. To see the order of post-stacks filtering steps and the scripts used for each step, check out [this Jupyter notebook](https://github.com/mfisher5/PCod-Korea-repo/blob/master/notebooks/Post-Stacks%20Filtering.ipynb). 

<br>

**6) Stacks**: Contains all stacks output files from the first run-through of the pipeline, from `ustacks` to `populations` to building the reference genome. The populations output in this folder was filtered to a final genepop final for the purpose of comparing data visualizations before and after alignment to a reference genome. 
- `refgenome`: contains the bowtie executable and the reference genome for the northeastern populations. 

<br>

**7) Stacks_wgenome**: Contains all stacks output files from the second run-through of the pipeline, from `bowtie` alignment of .sam files to a reference genome to `pstacks` to `populations`. 

