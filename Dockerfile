FROM alpine:3.14
RUN apk --no-cache add curl
RUN curl -L https://github.com/hasura/graphql-engine/raw/stable/cli/get.sh | sh
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]