#!/bin/bash

source lib.sh

if [[ "$ENVIRONMENT" == "DEV" ]]; then
    echo "Environment is dev: $ENVIRONMENT"
elif [[ "$ENVIRONMENT" == "PROD" ]]; then
    echo "Environment is prod: $ENVIRONMENT"
fi
