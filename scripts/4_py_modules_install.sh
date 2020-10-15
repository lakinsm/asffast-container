#!/usr/bin/env bash
# written by oleg osipenko
# 10012020

# ----- conda install each module -----
source /usr/local/miniconda3/etc/profile.d/conda.sh  # This must be invoked to use conda activate in Singularity
conda activate ASFFAST
conda install numpy flask pandas matplotlib biopython openpyxl
