FROM jupyter/base-notebook:87210526f381

ARG GMAPS_VERSION

RUN /opt/conda/bin/pip install gmaps==$GMAPS_VERSION geopy pandas matplotlib && \
    /opt/conda/bin/jupyter labextension install @jupyter-widgets/jupyterlab-manager && \
    /opt/conda/bin/jupyter lab build
