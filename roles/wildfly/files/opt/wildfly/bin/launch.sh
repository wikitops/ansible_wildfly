#!/bin/bash

if [ "x$WILDFLY_HOME" = "x" ]; then
    WILDFLY_HOME="/opt/wildfly"
fi

if [[ "$1" == "domain" ]]; then
    $WILDFLY_HOME/bin/domain.sh -c $2 -b $3 -bmanagement $4 -Djboss.socket.binding.port-offset=$5
else
    $WILDFLY_HOME/bin/standalone.sh -c $2 -b $3 -bmanagement $4 -Djboss.socket.binding.port-offset=$5
fi
