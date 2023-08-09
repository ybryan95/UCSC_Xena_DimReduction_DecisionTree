![image](https://github.com/ybryan95/UCSC_Xena_Dimensionality_Reduction_Demo/assets/123009743/a5a09993-63e0-4331-845e-35ab276cb7bb)

# Table of Contents
- [1. Getting started](#1-getting-started)
    - [1.1 Data Sources](#11-data-sources)
- [2. Understanding the Code](#2-understanding-the-code)

# 1. Getting started
## 1.1 Data Sources
The data used in this project is downloaded from the following sources:
- `Cnv.tsv`: [xenabrowser.net](https://xenabrowser.net/datapages/?dataset=TCGA-GBM.htseq_counts.tsv&host=https%3A%2F%2Fgdc.xenahubs.net&removeHub=https%3A%2F%2Fxena.treehouse.gi.ucsc.edu%3A443)
- `Phe.tsv`: [xenabrowser.net](https://xenabrowser.net/datapages/?dataset=TCGA-GBM.GDC_phenotype.tsv&host=https%3A%2F%2Fgdc.xenahubs.net&removeHub=https%3A%2F%2Fxena.treehouse.gi.ucsc.edu%3A443)


# Understanding the Code

This repository contains an R script for preprocessing and analyzing biomedical data. The script performs several data preprocessing steps, Principal Component Analysis (PCA), and Non-negative Matrix Factorization (NMF) on two datasets: 'cnv.tsv' and 'phe.tsv'.

## Files

- `dimred.R`: This is the main script that performs the data preprocessing and analysis.

## Data

The data used in this script are:

- `cnv.tsv`: This file contains copy number variation (CNV) data.
- `phe.tsv`: This file contains phenotype (PHE) data.

## Workflow

The script performs the following steps:

1. **Data Loading**: The script reads the 'cnv.tsv' and 'phe.tsv' files into data frames.

2. **Data Preprocessing**: The script performs several preprocessing steps on the data frames, including removing columns with too many null values, removing rows with any null values, and converting the data frames to matrices of numeric type.

3. **Principal Component Analysis (PCA)**: PCA is performed on the CNV data to reduce its dimensionality. The top 1000 rows with the highest standard deviation are selected for this analysis.

4. **Non-negative Matrix Factorization (NMF)**: NMF is performed on the transposed CNV data to decompose it into the product of two non-negative matrices.

## Dependencies

This script requires the following R package:

- `NMF`

## Usage

To run the script, you need to set the `dir_project1` variable to the directory path where your 'cnv.tsv' and 'phe.tsv' files are located. Then, you can run the script in R or RStudio.

## Results

The script generates plots from the PCA and NMF results. These plots can be used to visualize the structure and patterns in the data.

## Contact

For any questions or issues, please open an issue in this repository.
