FROM continuumio/miniconda3

MAINTAINER Roma Trakhov <trakhovroma@gmail.com>

RUN python3 -m venv venv && . venv/bin/activate
ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt