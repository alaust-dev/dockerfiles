#!/bin/bash

exec opendkim &
exec /usr/sbin/postfix start-fg