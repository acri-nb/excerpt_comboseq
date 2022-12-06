#docker is runing only with sudo
#using hg38 genome in the 10.253.0.234 server
#If using off-site, the path for the exceRptInput may need to be changed (/mnt/acri7/excerpt_in)
inFile=$1
outDir=$2
sudo docker run -v /mnt/acri7/excerpt_in:/exceRptInput -v ${outDir}:/exceRptOutput -v /references/ExceRptDatabase/hg38:/exceRpt_DB/hg38 -t rkitchen/excerpt INPUT_FILE_PATH=/exceRptInput/${inFile} MAIN_ORGANISM_GENOME_ID=hg38 ADAPTER_SEQ=AAAAAAAA MIN_READ_LENGTH=15 STAR_outFilterMatchNmin=15 RANDOM_BARCODE_LENGTH=4 RANDOM_BARCODE_LOCATION='-5p'

