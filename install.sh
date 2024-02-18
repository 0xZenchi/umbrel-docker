#!/usr/bin/env bash

INSTALL_PATH="./umbrel"

curl -L https://umbrel.sh \
    | sed "s|    sudo \${UMBREL_INSTALL_PATH}/scripts/start||" \
    | bash -s -- \
        --bootstrapped \
        --no-install-deps \
        --no-install-start-script \
        --install-path $INSTALL_PATH