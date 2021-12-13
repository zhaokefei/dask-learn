FROM jupyter/base-notebook:lab-2.2.5

USER root
# python3 setup
RUN apt-get update && apt-get install -y graphviz git

USER jovyan

RUN git clone https://github.com/zhaokefei/dask-learn.git ./dask-learn
RUN cd dask-learn
RUN conda env update -n dask_learn -f binder/environment.yml 
RUN conda activate dask_learn
RUN cd ..