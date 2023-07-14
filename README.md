![image](https://github.com/ybryan95/UCSC_Xena_Dimensionality_Reduction_Demo/assets/123009743/a5a09993-63e0-4331-845e-35ab276cb7bb)

# TCGA-GBM Data Analysis with PCA and NMF
This project involves the analysis of TCGA-GBM (Glioblastoma multiforme) data using Principal Component Analysis (PCA) and Non-negative Matrix Factorization (NMF). The scripts provided are written in R.

# Table of Contents
- [1. Getting started](#1-getting-started)
    - [1.1 Data Sources](#11-data-sources)
    - [1.2 Installation](#12-installation)
- [2. Understanding the Code](#2-understanding-the-code)
    - [2.1 PCA](#21-pca)
    - [2.2 NMF](#22-nmf)
- [3. Contributing](#3-contributing)
- [4. License](#4-license)

# 1. Getting started
## 1.1 Data Sources
The data used in this project is downloaded from the following sources:
- `Cnv.tsv`: [xenabrowser.net](https://xenabrowser.net/datapages/?dataset=TCGA-GBM.htseq_counts.tsv&host=https%3A%2F%2Fgdc.xenahubs.net&removeHub=https%3A%2F%2Fxena.treehouse.gi.ucsc.edu%3A443)
- `Phe.tsv`: [xenabrowser.net](https://xenabrowser.net/datapages/?dataset=TCGA-GBM.GDC_phenotype.tsv&host=https%3A%2F%2Fgdc.xenahubs.net&removeHub=https%3A%2F%2Fxena.treehouse.gi.ucsc.edu%3A443)

## 1.2 Installation
To replicate the analysis, you would need R and the relevant packages for performing PCA and NMF. 

# 2. Understanding the Code
## 2.1 PCA
PCA (Principal Component Analysis) is used to reduce the dimensionality of the data, while retaining most of the important information. It does this by transforming the data to a new set of variables, the principal components, which are uncorrelated and ordered so that they retain the most significant variation in the data.

## 2.2 NMF
NMF (Non-negative Matrix Factorization) is another dimensionality reduction technique, which has the characteristic that it only allows non-negative elements in the lower rank matrix representation of the original data. This can make the resulting components easier to interpret in some cases, as they can be understood as additive parts of the original elements.

# 3. Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

# 4. License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
