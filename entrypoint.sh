#!/bin/sh -l

echo "Hello $1"
echo "Repo $2"
echo "Param 3 => $3"

echo "GITHUB_REPOSITORY --   $GITHUB_REPOSITORY"
echo "Test_ARG --   $TestArg"
echo "-----------------------------------------"

time=$(date)
repo=$2
echo "::set-output name=time::$time"
echo "::set-output name=repo::repo"
echo "::set-output name=para1::'para1 val'"

