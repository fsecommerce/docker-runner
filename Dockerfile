FROM docker:20

RUN set -e -x \
    && apk update \
    && apk add python3 openssh-client openjdk8-jre git \
    && wget "https://github.com/rundeck/rundeck-cli/releases/download/v1.0.23/rundeck-cli-1.0.23-all.jar" -O /root/rd.jar

RUN apk add --no-cache nss

COPY bin/* /usr/local/bin

RUN set -e -x \
    && chmod a+x /usr/local/bin/*
