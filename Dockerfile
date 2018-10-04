FROM continuumio/miniconda3

MAINTAINER Roma Trakhov <trakhovroma@gmail.com>

<<<<<<< HEAD
RUN python3 -m venv venv && . venv/bin/activate
ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
=======
ADD environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml
RUN source activate test-env
>>>>>>> b792cb2c2863e57960c24c5354704ab20d39b91e
