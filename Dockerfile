FROM continuumio/miniconda3
MAINTAINER Roma Trakhov <trakhovroma@gmail.com>

ADD environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml
RUN source activate env
