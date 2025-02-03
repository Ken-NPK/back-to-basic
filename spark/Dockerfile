FROM jupyter/base-notebook:latest

COPY ./requirements.txt /jupyter/
WORKDIR /jupyter

USER root

# Setup java
RUN apt-get -y update
RUN mkdir -p /usr/share/man/man1/
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y openjdk-8-jre
RUN update-alternatives --config java
RUN update-alternatives --config javac

# Add more python library
RUN pip install -r requirements.txt

# Accessing jupyter notebook
EXPOSE 8888

USER $NB_UID
