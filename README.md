# ACRI exceRpt implementation for COMBOSEQ
## Piror to running exceRpt, please verify that excerpt_in points to hard files, soft-links do not work
### Also please specify full output dir path as second arg. 
### Input dirs should contain the fastq files to be processed. COMBOseq fastqs are second-strand sequenced. 
### Illumina is FS sequences, therefore any smRNA pushed through exceRpt should be sense for comboseq and antisens for illumina

### exceRpt is currently run from a docker image requiring sudo privileges. It aligns with priority to miRs / small RNA, then GENCODE. 
### The command for batch input is:

nohup sudo bash -c 'for i in `ls <excerpt_in>/*.gz | awk -F "/" '{print $NF}' `; do ./excerpt.sh $i <inDir> <outDir>; done' &

## Followed by a helper script to merge counts into a RData object. 

Rscript mergePipelineRuns.R <outDir>

## Afterwards, the following command can be run to summarize results. 

R -e "rmarkdown::render('exceRpt_DGE_rmd.Rmd')" --args excerpt_out/exceRpt_smallRNAQuants_ReadCounts.RData Design_template_1.txt 2 Responder Progression

##The arguments are 1 - the RData object from the merge script, 2 - The phenotype data table, 3 - The low-count filter (in CPM), 4 - the reference factor level, 5 - the treatment factor level.
##Using the counts from the excerpt_out folder, the supplied design matrix, the filter (CPM) and the reference and treatment levels, a HTML markdown is created.  
##Please refer to user eallain for any questions / details
