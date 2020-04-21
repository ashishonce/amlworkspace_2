FROM marvinbuss/aml-docker:1.1.5

LABEL maintainer="azure/gh-aml"

RUN apt-get update
RUN yes | apt-get install curl
RUN yes | curl -sL https://aka.ms/InstallAzureCLIDeb | bash

RUN python -m pip install --upgrade pip
RUN python -m pip install azure-cli-core

COPY /code /code
ENTRYPOINT ["/code/entrypoint.sh"]
