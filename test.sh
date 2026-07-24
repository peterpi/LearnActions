echo This is from a shell script.

echo $DOCKER_HUB_PATH | docker login --password-stdin -u peterpimley

docker build -t learnactions:$GITHUB_REF_NAME .