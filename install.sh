#!/bin/sh

install -m 755 bin/organia-deploy /usr/local/bin/organia-deploy
install caddy/organia.conf /etc/caddy/conf.d/organia.conf