#!/usr/bin/env bash

source ../.env

if [[ -z "$1" ]]
  then
    echo "Usage: ./test_runner.sh <environment>"
    exit 1
fi

if [[ "$1" != "development" ]] && [[ "$1" != "ci" ]]
   then
    echo "environment=${1} is not supported."
    exit 1
fi

ENVIRONMENT=$1

export RAND=$(date +%s)

# Bring up mongo
docker run --name tests-mongo-"${PROJECT}"-"${RAND}" -d mongo:3.6.3
if [ $? -ne 0 ]; then
    echo "Unable to start mongo container"
    exit 1
fi

# wait for mongo container to be up
until [[ "$(docker inspect -f '{{.State.Running}}' tests-mongo-"${PROJECT}"-"${RAND}")" = "true" ]]; do
    echo .
    sleep 1;
done;

docker build -t tests-java-application-"${PROJECT}"-"${RAND}" -f Dockerfile.ci .

docker run --rm \
 -e COVERAGE_LIMITS_SPREADSHEET_SECRET="$COVERAGE_LIMITS_SPREADSHEET_SECRET" \
 -e COVERAGE_LIMITS_SPREADSHEET_WORKSHEET="${PROJECT}/java-application" \
 -e GIT_BRANCH="$GIT_BRANCH" \
 -e ENVIRONMENT="$ENVIRONMENT" \
 --link tests-mongo-"${PROJECT}"-"${RAND}":mongo \
 tests-java-application-"${PROJECT}"-"${RAND}"

if [ $? -ne 0 ]; then
    echo "Error running tests"
    # Clean up
    docker rm -f tests-mongo-"${PROJECT}"-"${RAND}" || echo "error removing mongo container"
    exit 3
fi

# Clean up
docker rm -f tests-mongo-"${PROJECT}"-"${RAND}" || echo "error removing mongo container"
