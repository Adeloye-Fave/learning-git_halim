#!/bin/bash
eval "$(conda shell.bash hook)"
mkdir -p fastqc_output, cutadapt_output, bwa_mem2_ouput, bam_files , sorted_bam , name_sorted , fixmate , sorted_fixmate, markdup

FASTQ_DIR="/mnt/c/Users/Kaothar/Desktop/Bioinformatics_Training_GUTMAL/Week_7/fastq_output"
FASTQC_DIR="/mnt/c/Users/Kaothar/Desktop/Bioinformatics_Training_GUTMAL/Week_7/fastqc_output"
CUTADAPT_DIR="/mnt/c/Users/Kaothar/Desktop/Bioinformatics_Training_GUTMAL/Week_7/cutadapt_output"
BWA_MEM2_OUTPUT="/mnt/c/Users/Kaothar/Desktop/Bioinformatics_Training_GUTMAL/Week_7/bwa_mem2_output"
BAM_FILES="/mnt/c/Users/Kaothar/Desktop/Bioinformatics_Training_GUTMAL/Week_7/bam_files"
SORTED_BAM="/mnt/c/Users/Kaothar/Desktop/Bioinformatics_Training_GUTMAL/Week_7/sorted_bam"
NAME_SORTED="/mnt/c/Users/Kaothar/Desktop/Bioinformatics_Training_GUTMAL/Week_7/name_sorted"
FIXMATE="/mnt/c/Users/Kaothar/Desktop/Bioinformatics_Training_GUTMAL/Week_7/fixmate"
SORTED_FIXMATE="/mnt/c/Users/Kaothar/Desktop/Bioinformatics_Training_GUTMAL/Week_7/sorted_fixmate"
MARKDUP="/mnt/c/Users/Kaothar/Desktop/Bioinformatics_Training_GUTMAL/Week_7/markdup"

for R1 in ${FASTQ_DIR}/*_1.fastq.gz; do
  SAMPLE=$(basename "$R1" _1.fastq.gz)
  R2=${FASTQ_DIR}/${SAMPLE}_2.fastq.gz

   fastqc $R1 $R2 -o $FASTQC_DIR
done

