#!/bin/bash

if [ -n "$SSH_PRIVATE_KEY" ] ;then
    echo "$SSH_PRIVATE_KEY" > /root/.ssh/id_rsa
    chmod 0600 /root/.ssh/id_rsa

    if [ -n "$SSH_PUBLIC_KEY" ] ;then
        echo "$SSH_PUBLIC_KEY" > /root/.ssh/id_rsa.pub
        chmod 0640 /root/.ssh/id_rsa.pub
    fi
fi

if [ -n "$GITHUB_API_TOKEN" ]; then
    /usr/local/bin/composer config -g github-oauth.github.com $GITHUB_API_TOKEN
fi

exec "$@"
