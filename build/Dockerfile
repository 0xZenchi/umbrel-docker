FROM debian:stable-slim

ENV INSTALL_PATH=/umbrel

RUN apt-get -y update && apt-get -y install sudo curl iproute2
RUN apt-get -y install docker docker-compose

RUN curl -L https://umbrel.sh | bash -s -- \
    --bootstrapped \
    --no-install-umbrel \
	--no-install-docker \
	--no-install-compose \
    --install-path $INSTALL_PATH

COPY ./entrypoint.sh entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]

CMD [ "scripts/start" ]
