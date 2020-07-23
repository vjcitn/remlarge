FROM bioconductor/bioconductor_docker:devel

RUN apt-get update \
  && apt-get install --no-install-recommends -y h5py h5pyd \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN Rscript -e "devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"
