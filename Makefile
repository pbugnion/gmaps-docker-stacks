
GMAPS_VERSION =
WORK_DIRECTORY =

build-jupyter:
	docker build jupyter/ --build-arg GMAPS_VERSION=${GMAPS_VERSION} -t jupyter-gmaps:${GMAPS_VERSION}

run-jupyter:
	docker run -p 8888:8888 --volume ${WORK_DIRECTORY}:/home/jovyan/work jupyter-gmaps:${GMAPS_VERSION}

build-jupyterlab:
	docker build jupyterlab/ --build-arg GMAPS_VERSION=${GMAPS_VERSION} -t jupyterlab-gmaps:${GMAPS_VERSION}

run-jupyterlab:
	docker run -p 8888:8888 --volume ${WORK_DIRECTORY}:/home/jovyan/work jupyterlab-gmaps:${GMAPS_VERSION} start.sh jupyter lab

.PHONY: build-jupyter run-jupyter
