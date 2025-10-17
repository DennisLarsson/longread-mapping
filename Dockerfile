FROM ubuntu:24.04 AS longread-mapping-install
RUN apt-get update && apt-get install -y wget bzip2 samtools \
&& rm -rf /var/lib/apt/lists/*

RUN mkdir /minimap2-2.30_x64-linux
RUN wget https://github.com/lh3/minimap2/releases/download/v2.30/minimap2-2.30_x64-linux.tar.bz2 -O /minimap2-2.30_x64-linux.tar.bz2 && \
 tar -xjf /minimap2-2.30_x64-linux.tar.bz2 && \
 rm /minimap2-2.30_x64-linux.tar.bz2
RUN ln -s /minimap2-2.30_x64-linux/minimap2 /bin/minimap2
