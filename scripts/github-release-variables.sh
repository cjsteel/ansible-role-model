#!/bin/bash
#
# scripts/github-release-varables.sh
#
source ~/.private/github/cjsteel
export GIT_ACCOUNT=cjsteel
export GIT_SHORT_NAME=model
export GIT_REPOSITORY=ansible-role-$GIT_SHORT_NAME
# export GIT_TAG="0.0.1"
export GIT_TAG=`cat VERSION`
