#!/bin/bash
#SBATCH --job-name=OBER_16S_515F926R_Q14878_SAM1-52
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16

source activate ~/miniconda3/envs/qiime2-2019.10

cd /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz

ls [A-Z]*.fastq.gz > list_fastq_gz_files.txt

mkdir -p /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/temp
export TMPDIR=/export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/temp

mkdir -p OBER_16S_515F926R_Q14878_SAM1-52

mkdir -p OBER_16S_515F926R_Q14878_SAM1-52/raw_data

qiime

cp -u OBER_16S_515F926R_Q14878_SAM1-52@*_R1_*.fastq.gz /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/
cp -u OBER_16S_515F926R_Q14878_SAM1-52@*_R2_*.fastq.gz /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/
cp -u OBER_16S_515F926R_Q14878_SAM1-52*_bash_step_00_*.sh /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/
gunzip -k /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52@*_R1_*.fastq.gz
gunzip -k /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52@*_R2_*.fastq.gz
cp /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/python_scripts/qiime_pre_demux.py /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/
cp /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/python_scripts/qiime2_subsampling_quality_check.py /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/
cp OBER_16S_515F926R_Q14878_SAM1-52@metadata.txt /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/
cd /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52
python3.6 qiime_pre_demux.py
cd /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/raw_data/
chmod -R 777 *.fastq
head -40000 /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/raw_data/forward.fastq > /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/10kseq-OBER_16S_515F926R_Q14878_SAM1-52@sub_R1_sample.fastq
head -40000 /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/raw_data/reverse.fastq > /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/10kseq-OBER_16S_515F926R_Q14878_SAM1-52@sub_R2_sample.fastq
gzip -k /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/10kseq-OBER_16S_515F926R_Q14878_SAM1-52@sub_R1_sample.fastq
gzip -k /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/10kseq-OBER_16S_515F926R_Q14878_SAM1-52@sub_R2_sample.fastq
cp -u /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52@metadata.txt /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/10kseq-OBER_16S_515F926R_Q14878_SAM1-52@metadata.txt
gzip *.fastq
cp -u /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/raw_data/forward.fastq.gz /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52@clean_R1_seq.fastq.gz
cp -u /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/raw_data/reverse.fastq.gz /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52@clean_R2_seq.fastq.gz
cd /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52
chmod -R 777 *.fastq.gz
python3.6 qiime2_subsampling_quality_check.py
cd /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz


source deactivate