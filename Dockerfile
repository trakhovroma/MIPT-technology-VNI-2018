FROM python:3.6-slim
MAINTAINER Roma Trakhov <trakhovroma@gmail.com>
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook

ARG NB_USER
ARG NB_UID
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}
WORKDIR ${HOME}
ADD hw1.ipynb hw1.ipynb
#RUN python3 -m venv venv
#RUN . venv/bin/activate
#ADD requirements.txt /tmp/requirements.txt
#RUN pip install -r /tmp/requirements.txt
