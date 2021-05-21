#!/usr/bin/env bash

source .env
source /root/.bashrc

set -e

IFS=', ' read -r -a arr <<< "$REACT_BASED_APPLICATIONS"

for i in "${arr[@]}"
do
   cd "$i"
   yarn install --frozen-lockfile
   yarn prettier --write "src/**/*.{js,jsx,ts,tsx,json,css,scss,md}"
   cd -
done
