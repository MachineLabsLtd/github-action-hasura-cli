FROM frolvlad/alpine-glibc
RUN apk --no-cache add curl libstdc++
RUN curl -L https://github.com/hasura/graphql-engine/raw/stable/cli/get.sh | sh
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]