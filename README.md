![image](https://github.com/ybryan95/UCSC_Xena_Dimensionality_Reduction_Demo/assets/123009743/a5a09993-63e0-4331-845e-35ab276cb7bb)

# TCGA-GBM Data Analysis
This project involves the analysis of TCGA-GBM (Glioblastoma multiforme) data using decision tree models to classify patient outcomes based on various demographic and treatment features. The scripts provided are written in R.

# Table of Contents
- [1. Getting started](#1-getting-started)
    - [1.1 Data Sources](#11-data-sources)
    - [1.2 Installation](#12-installation)
- [2. Understanding the Code](#2-understanding-the-code)
    - [2.1 Data Preprocessing](#21-data-preprocessing)
    - [2.2 Model Training](#22-model-training)
    - [2.3 Model Evaluation](#23-model-evaluation)
- [3. Contributing](#3-contributing)
- [4. License](#4-license)

# 1. Getting started
## 1.1 Data Sources
The data used in this project is downloaded from the following sources:
- `Cnv.tsv`: [xenabrowser.net](https://xenabrowser.net/datapages/?dataset=TCGA-GBM.htseq_counts.tsv&host=https%3A%2F%2Fgdc.xenahubs.net&removeHub=https%3A%2F%2Fxena.treehouse.gi.ucsc.edu%3A443)
- `Phe.tsv`: [xenabrowser.net](https://xenabrowser.net/datapages/?dataset=TCGA-GBM.GDC_phenotype.tsv&host=https%3A%2F%2Fgdc.xenahubs.net&removeHub=https%3A%2F%2Fxena.treehouse.gi.ucsc.edu%3A443)

## 1.2 Installation
To replicate the analysis, you would need R and the following packages: `rpart`, `rpart.plot`. 

You can install these using the command: `install.packages(c("rpart", "rpart.plot"))`

# 2. Understanding the Code
## 2.1 Data Preprocessing
The script begins by reading in the `Phe.tsv` file which contains demographic and treatment information for each patient. After loading the data, relevant features are selected and instances with missing data are removed. The script then converts the survival time of each patient into a binary label, i.e., "survived" or "did not survive", based on a threshold of 365 days.

## 2.2 Model Training
The cleaned data is split into a training set (67% of the data) and a testing set (33% of the data). A decision tree model is then trained on the training set using the `rpart` function.

## 2.3 Model Evaluation
The trained model is used to make predictions on both the training set and the testing set. The accuracy of the model is evaluated by computing confusion matrices for both sets.

# 3. Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

# 4. License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
