FROM marvinbuss/aml-docker:1.1.5

LABEL maintainer="azure/gh-aml"

RUN apt-get update
RUN apt-get install azure-cli

COPY /code /code
ENTRYPOINT ["/code/entrypoint.sh"]
