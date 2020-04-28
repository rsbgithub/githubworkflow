#!/bin/sh -l

echo "Hello $1"
echo "Repo $2"
echo "GITHUB_REPOSITORY --   $GITHUB_REPOSITORY"
echo "-----------------------------------------"

time=$(date)
repo=$2
echo "::set-output name=time::$time"
echo "::set-output name=repo::repo"


