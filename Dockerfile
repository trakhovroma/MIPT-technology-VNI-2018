FROM circleci/python:3.6.1
MAINTAINER Roma Trakhov <trakhovroma@gmail.com>

RUN python3 -m venv venv
RUN . venv/bin/activate
ADD requirements.txt /tmp/requirements.txt
RUN pip install -r --user /tmp/requirements.txt
