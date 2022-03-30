#!/bin/bash
$(aws ecr get-login --no-include-email --region $AWS_DEFAULT_REGION)
docker pull $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$IMAGE_REPO_NAME:$IMAGE_TAG
docker run -d -p $CLIENT_PORT:$DOCKER_PORT --rm -e $ENV1_KEY=$ENV1_VALUE -e $ENV2_KEY=$ENV2_VALUE --name $IMAGE_REPO_NAME $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$IMAGE_REPO_NAME:$IMAGE_TAG