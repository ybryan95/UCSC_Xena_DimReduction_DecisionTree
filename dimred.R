# Set the directory path
dir_project1 <- "C:/Users/choyo/Desktop/CODEDATA/biomeddatasci/II/hw1/"
dir_res1 <- dir_project1

# Load in the data
f_cnv1 <-paste(dir_project1, 'cnv.tsv', sep='/')
f_phe1 <- paste(dir_project1, 'phe.tsv', sep='/')


data1 <- read.delim(f_cnv1, sep='\t')
phe1 <- read.delim(f_phe1, sep='\t')


null_count <-apply(phe1, 2, function(x) sum(is.na(x)))
remove_cols <- names(null_count[null_count > 100])

cols_to_remove <- names(phe1) %in% remove_cols

phe1 <- subset(phe1, select = !cols_to_remove)
phe1 <- phe1[complete.cases(phe1),]

phe1 <- phe1[,-1] #drop the 1st column which are TCGA...
data1 <- data1[,-1]

phe1 <- as.matrix(phe1)
data1 <- as.matrix(data1)

phe1 <- apply(phe1, 2, as.numeric)
data1 <- apply(data1, 2, as.numeric)

#PCA
r_sd1 <- apply(data1, 1, sd)
idx_row1 <- which(r_sd1 >= (sort(r_sd1, decreasing=T)[1000]))
data2 <- data1[idx_row1,]
dim(data2)
data2 <- t(data2)
dim(data2)
data2 <- apply(data2, 2, as.numeric)
y_pca <- prcomp(data2)
attributes(y_pca)
summary(y_pca)
xt <- y_pca$x
plot(xt[,1], xt[,2], pch = 16)


#NMF
library('NMF')
y_nmf <- nmf(t(data2), 2)
w1 <- y_nmf@fit@W
h1 <- y_nmf@fit@H
plot(h1[1,], h1[2,], pch=16)
