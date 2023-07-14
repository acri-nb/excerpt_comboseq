#docker is runing only with sudo
#using hg38 genome in the 10.111.243.103 server
inFile=$1
inDir=$2
outDir=$3
sudo docker run -v ${inDir}:/exceRptInput -v ${outDir}:/exceRptOutput -v /references/ExceRptDatabase/hg38:/exceRpt_DB/hg38 -t rkitchen/excerpt INPUT_FILE_PATH=/exceRptInput/${inFile} MAIN_ORGANISM_GENOME_ID=hg38 ADAPTER_SEQ=AAAAAAAA MIN_READ_LENGTH=15 STAR_outFilterMatchNmin=15 RANDOM_BARCODE_LENGTH=4 RANDOM_BARCODE_LOCATION='-5p'

