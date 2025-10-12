FROM ubuntu:24.04 AS stacks2
RUN apt-get update && apt-get install -y wget \
&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p ~/miniconda3
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-py312_25.7.0-2-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
RUN bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
RUN rm ~/miniconda3/miniconda.sh

RUN conda config --add channels bioconda
