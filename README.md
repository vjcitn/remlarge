# remlarge: remote large data methods for bioconductor

To explore the basic resource developed in this project, use
```
sudo docker run -ti vjcitn/remlarge:latest bash
```
This can be modified with `-p 8787:8787` and a -e PASSWORD=... setting to allow usage of rstudio
at localhost:8787.

Hit the [Get started](https://vjcitn.github.io/remlarge/articles/remlarge.html) button to
start learning about resource for working with remote large data.

As a very basic illustration of the sort of thing we'll be looking at, here we
use bioc 3.12 rhdf5 to interrogate HDF5 data that are simply present in S3 buckets.

```
> zz
[1] "https://bcfound-bigrna.s3.amazonaws.com/ca30k.h5"
> zz2
[1] "https://biocfound-tcga.s3.amazonaws.com/lihc450k_imp.h5"
> h5ls(zz, s3=TRUE)
  group     name       otype dclass           dim
0     / assay001 H5I_DATASET  FLOAT 58288 x 29518
> h5ls(zz2, s3=TRUE)
  group     name       otype dclass          dim
0     / assay001 H5I_DATASET  FLOAT 396065 x 429
> sessionInfo()
R version 4.0.0 (2020-04-24)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Ubuntu 18.04.4 LTS

Matrix products: default
BLAS/LAPACK: /usr/lib/x86_64-linux-gnu/libopenblasp-r0.2.20.so

locale:
 [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C               LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
 [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=C              LC_PAPER=en_US.UTF-8       LC_NAME=C                 
 [9] LC_ADDRESS=C               LC_TELEPHONE=C             LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] rhdf5_2.33.7        data.table_1.12.8   BiocManager_1.30.10

loaded via a namespace (and not attached):
[1] compiler_4.0.0     tools_4.0.0        tinytex_0.23       rhdf5filters_1.1.2 xfun_0.14          Rhdf5lib_1.11.3   
```
