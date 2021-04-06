FROM ubuntu:18.04

ENV PATH /root/miniconda3/bin:$PATH

RUN apt update \ 
    && apt install -y htop python3-dev wget

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && mkdir root/.conda \
    && sh Miniconda3-latest-Linux-x86_64.sh -b \
    && rm -f Miniconda3-latest-Linux-x86_64.sh

WORKDIR /work/

COPY . /work/

RUN pip install -r requirement.txt

RUN chmod +x *.sh