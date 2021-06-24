#!/bin/sh -l

set -e

if [[ -z "$HASURA_GRAPHQL_ENDPOINT" || -z "$HASURA_GRAPHQL_ADMIN_SECRET" ]]; then
    echo "Please provide all of the following environment variables: HASURA_GRAPHQL_ENDPOINT, HASURA_GRAPHQL_ADMIN_SECRET"
    # Command cannot be run
    exit 126
fi

if [ -n "$HASURA_ENGINE_VERSION" ]; then
    hasura update-cli --version $HASURA_ENGINE_VERSION
fi

exec hasura $*
