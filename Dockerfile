FROM bioconductor/bioconductor_docker:devel

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN apt-get update \
  && apt-get install --no-install-recommends -y python3-pip \
  && rm -rf /var/lib/apt/lists/*
  
RUN pip3 install h5py h5pyd

RUN Rscript -e "devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"
