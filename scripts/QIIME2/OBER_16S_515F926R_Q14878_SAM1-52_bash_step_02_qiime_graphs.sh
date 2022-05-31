#!/bin/bash
#SBATCH --job-name=OBER_16S_515F926R_Q14878_SAM1-52
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16

source activate ~/miniconda3/envs/qiime2-2019.10

qiime

cd /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz

cp /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/python_scripts/qiime_settings.ini /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/qiime_settings.txt
cp -u /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52*_bash_step_02*.sh /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/

qiime diversity alpha-rarefaction \
--i-table /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_table.qza \
--m-metadata-file /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52@metadata.txt \
--o-visualization /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_alpha_rarefaction_curves.qzv \
--p-min-depth 100 \
--p-max-depth 20000


qiime diversity core-metrics-phylogenetic \
--i-table /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_table.qza \
--i-phylogeny /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_rooted-tree.qza \
--m-metadata-file /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52@metadata.txt \
--p-sampling-depth 23398 \
--output-dir /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_microbial-diversity-results


qiime taxa barplot \
--i-table /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_table.qza \
--i-taxonomy /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_taxonomy_NB_classifier_SILVA_132_99_16S_515F-926R_QIIME2-2019.10.qza \
--m-metadata-file /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52@metadata.txt \
--o-visualization /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_taxa_barplot.qzv


mkdir /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_taxa_absolute_relative
unzip /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_taxa_barplot.qzv -d /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_taxa_absolute_relative
echo OBER_16S_515F926R_Q14878_SAM1-52 > /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_taxa_absolute_relative/OBER_16S_515F926R_Q14878_SAM1-52.id
find /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52 -type f -name 'level-*.csv' -exec sh -c 'for arg do cp -- "$arg" "/export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_taxa_absolute_relative/"; done' _ {} +
cd /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_taxa_absolute_relative/
ls level-*.csv > list_csv_files.txt
cp /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/python_scripts/transpose_csv_files.py /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_taxa_absolute_relative/
python3.6 /export2/home/microlab/qiime2/pipeline_qiime2-2019-10/raw_illumina_data_gz/OBER_16S_515F926R_Q14878_SAM1-52/OBER_16S_515F926R_Q14878_SAM1-52_taxa_absolute_relative/transpose_csv_files.py

source deactivate