MSYS_NO_PATHCONV=1 docker run -it --rm --entrypoint /bin/hasura-cli --net host -v $(pwd):/app hasura/graphql-engine:v2.0.7.cli-migrations-v3 --project /app/hasura --skip-update-check $*
