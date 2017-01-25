#!/bin/bash
set -e

if [ "$TRAVIS_EVENT_TYPE" = "cron" ]; then
  echo "Deploying base images..."
else
  echo "Skipping deploy base images"
  exit 0
fi

# create docker image containous/traefik
echo "Updating docker containous/traefik image..."
docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS
docker push containous/traefik-base-image
docker push containous/traefik-webui-base-image

echo "Deployed"
travis_terminate 0