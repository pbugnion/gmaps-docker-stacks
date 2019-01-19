
GMAPS_VERSION =
WORK_DIRECTORY =
TAG_ROOT = pbugnion/
JUPYTER_TAG = ${TAG_ROOT}jupyter-gmaps
JUPYTERLAB_TAG = ${TAG_ROOT}jupyterlab-gmaps

build: build-jupyter build-jupyterlab

build-jupyter:
	docker build jupyter/ --build-arg GMAPS_VERSION=${GMAPS_VERSION} -t ${JUPYTER_TAG}:${GMAPS_VERSION}

run-jupyter:
	docker run -p 8888:8888 --volume ${WORK_DIRECTORY}:/home/jovyan/work ${JUPYTER_TAG}:${GMAPS_VERSION}

push-jupyter:
	docker push ${JUPYTER_TAG}:${GMAPS_VERSION}

build-jupyterlab:
	docker build jupyterlab/ --build-arg GMAPS_VERSION=${GMAPS_VERSION} -t ${JUPYTERLAB_TAG}:${GMAPS_VERSION}

run-jupyterlab:
	docker run -p 8888:8888 --volume ${WORK_DIRECTORY}:/home/jovyan/work ${JUPYTERLAB_TAG}:${GMAPS_VERSION} start.sh jupyter lab

push-jupyterlab:
	docker push ${JUPYTERLAB_TAG}:${GMAPS_VERSION}

.PHONY: build-jupyter run-jupyter build-jupyterlab run-jupyterlab
