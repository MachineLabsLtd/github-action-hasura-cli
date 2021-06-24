#!/bin/sh -l

set -e

if [[ -z "$HASURA_GRAPHQL_ENDPOINT" || -z "$HASURA_GRAPHQL_ADMIN_SECRET" || -z "$HASURA_GRAPHQL_METADATA_DIRECTORY" || -z "$HASURA_GRAPHQL_MIGRATIONS_DIRECTORY" ]]; then
    echo "Please provide all of the following environment variables: HASURA_GRAPHQL_ENDPOINT, HASURA_GRAPHQL_ADMIN_SECRET, HASURA_GRAPHQL_METADATA_DIRECTORY, HASURA_GRAPHQL_MIGRATIONS_DIRECTORY"
    # Command cannot be run
    exit 126
fi

exec hasura $*
