#!/bin/sh -l

echo "Hello This should run java program"
echo "Git reop $GITHUB_REPOSITORY"

cd /home
java -jar githubworkflow-1.0-SNAPSHOT.jar

echo "Did the program run"



