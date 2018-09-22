#!/bin/bash
set -e

# Variables
DIR="$(dirname "$(readlink -f "$0")")"
DIR_ROOT="$(dirname $DIR)"
DIR_SRC="${DIR_ROOT}/src"
DIR_ARTIFACTS="${DIR_ROOT}/.artifacts"

FILE_REPO="${DIR}/REPOSITORIES"

rm -rf $DIR_ARTIFACTS
mkdir -p $DIR_ARTIFACTS
while IFS="" read -r repo || [ -n "$repo" ]
do
    cd $DIR_ARTIFACTS
    
    repo_name="${repo%.*}" 
    dirname=$(echo ${repo_name} | awk -F/ '{print $NF}')

    git clone $repo
    cd $dirname

    project="${DIR_SRC}/${dirname}/"
    mkdir -p "${project}"
    cp docs/icon/icon.svg "${project}"/icon.svg || true

    cd $DIR_ARTIFACTS 
done < "${FILE_REPO}"