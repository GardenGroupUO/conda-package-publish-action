FROM continuumio/miniconda3:4.7.10

LABEL "repository"="https://github.com/GardenGroupUO/conda-package-publish-action"

RUN conda install -y anaconda-client conda-build

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
