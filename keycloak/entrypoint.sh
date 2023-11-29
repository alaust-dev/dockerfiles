#!/bin/bash

/opt/keycloak/bin/kc.sh start \
--optimized \
--db-url-host="$1" \
--db-username=keycloak \
--db-password="$2" \
--hostname="$3" \
--proxy=edge \

