FROM ubuntu

MAINTAINER Oscar Castillo - oeco.castillo@gmail.com

RUN apt-get update

RUN apt-get install python python-pip python3 python3-pip gcc -y

RUN rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip

RUN pip3 install jupyterlab

RUN pip3 install tensorflow==1.14

RUN pip3 install numpy

RUN pip3 install matplotlib

RUN pip3 install python-resize-image

RUN pip install files

RUN pip3 install files

CMD mkdir -p /experiments/

ADD files_lab.tar.gz /experiments/
WORKDIR /experiments/archivos_exp/

EXPOSE 8888

ENTRYPOINT jupyter notebook --allow-root --ip='*'
