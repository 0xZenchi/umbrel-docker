# Umbrel in docker

Simple docker container and scripts to run Umbrel itself inside a docker
container, so it doesn't require the host machine to run on a Debian based OS.
Forked from [shrugal/umbrel-docker on GitLab](https://gitlab.com/shrugal/umbrel-docker/-/tree/main/).

Diffs from the original repo:
- Setup process has been simplified by the use of `docker compose`.

## Install
Run `./install.sh` to download the Umbrel code to your host machine.
- Set `INSTALL_PATH` to change the download location (Default: `$PWD/data`).

## Start
In your host machine, run `docker compose up -d` to launch Umbrel. By default, Umbrel will be available at http://YOUR-HOST-IP:8090 after launch.

Following environment variables can be configured through `docker-compose.yml`.
- `INSTALL_PATH`: location of the Umbrel code you have installed (Default: `$PWD/data`)
- `NGINX_PORT`: port where you can access the dashboard (Default: 8090)
- `DOCKER_BINARY`: docker executable location (Default: `/usr/bin/docker`)

