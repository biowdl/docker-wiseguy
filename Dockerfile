FROM python:3.7-slim

MAINTAINER sasc@lumc.nl


RUN apt-get update && \
apt-get install -y --no-install-recommends git && \
apt-get clean && \
rm -rf /var/lib/apt/lists

RUN git clone

RUN sed -i '23i\    packages=find_packages("."),' setup.py