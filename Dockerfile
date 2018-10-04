FROM continuumio/miniconda3
MAINTAINER Roma Trakhov <trakhovroma@gmail.com>

RUN mkdir /tmp
ADD environment.yml /tmp/environment.yml
RUN conda test-env create -f /tmp/environment.yml
RUN source activate test-env