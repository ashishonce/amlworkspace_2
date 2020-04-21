FROM marvinbuss/aml-docker:1.1.5

LABEL maintainer="azure/gh-aml"

RUN apt-get update
RUN apt-get install curl
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

COPY /code /code
ENTRYPOINT ["/code/entrypoint.sh"]
