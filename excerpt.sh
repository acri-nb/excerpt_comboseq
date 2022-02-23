
#docker is runing only with sudo
#using hg38 genome in the 10.253.0.234 server
sudo docker run -v /mnt/acri7/gabriel/lung_comboseq_2022:/exceRptInput -v /mnt/acri7/gabriel/lung_comboseq_2022/excerpt_out:/exceRptOutput -v /references/ExceRptDatabase/hg38:/exceRpt_DB/hg38 -t rkitchen/excerpt INPUT_FILE_PATH=/exceRptInput/L83.fastq.gz MAIN_ORGANISM_GENOME_ID=hg38 ADAPTER_SEQ=AAAAAAAA MIN_READ_LENGTH=15 STAR_outFilterMatchNmin=15 RANDOM_BARCODE_LENGTH=4 RANDOM_BARCODE_LOCATION='-5p'
