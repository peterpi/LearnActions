set -e
echo This is from a shell script.


IMAGE_TAG=peterpimley/learnactions:$GITHUB_REF_NAME

# Build.
docker build -t $IMAGE_TAG .

# Log in and push.
echo $DOCKER_HUB_PAT | docker login --password-stdin -u peterpimley
docker push $IMAGE_TAG