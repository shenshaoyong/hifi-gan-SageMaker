ARG REGION=us-east-1
# SageMaker PyTorch image
FROM 763104351884.dkr.ecr.us-east-1.amazonaws.com/pytorch-training:1.11.0-gpu-py38-cu113-ubuntu20.04-sagemaker

RUN apt-get update && \
 conda install -c conda-forge libsndfile -y
# apt-get -y install gcc &&\
# apt-get -y install wget 
 
#RUN wget 'https://github.com/libsndfile/libsndfile/releases/download/1.0.31/libsndfile-1.0.31.tar.bz2'
#RUN 'tar -xf libsndfile-1.0.31.tar.bz2;cd libsndfile-1.0.31/;./configure;make;sudo make install'
#RUN tar -xf libsndfile-1.0.31.tar.bz2 && cd libsndfile-1.0.31/ && ./configure;make && make install