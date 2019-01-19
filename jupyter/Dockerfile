FROM jupyter/base-notebook:87210526f381

ARG GMAPS_VERSION

RUN /opt/conda/bin/pip install gmaps==$GMAPS_VERSION geopy pandas matplotlib && \
    /opt/conda/bin/jupyter nbextension enable --py --sys-prefix gmaps
