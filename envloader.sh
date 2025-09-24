#!/bin/bash

if [[ -n "$CONFIG_ENV_URL" ]]; then
    echo "Downloading config.env from $CONFIG_ENV_URL..."
    curl -sSL "$CONFIG_ENV_URL" -o /root/LyFE/config.env
else
    echo "CONFIG_ENV_URL is not set, skipping download."
fi

exec npm start
