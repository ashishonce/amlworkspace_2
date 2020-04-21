FROM marvinbuss/aml-docker:1.1.5

LABEL maintainer="azure/gh-aml"

RUN sudo apt-get update
RUN sudo apt-get install azure-cli

COPY /code /code
ENTRYPOINT ["/code/entrypoint.sh"]
