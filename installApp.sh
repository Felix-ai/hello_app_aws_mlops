#!/bin/bash
aws ecr get-login-password --region $AWS_DEFAULT_REGION | sudo docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com
sudo docker pull $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$IMAGE_REPO_NAME:$IMAGE_TAG
sudo docker run -d -p $CLIENT_PORT:$DOCKER_PORT --rm -e HTTP=$DOCKER_ENV1_VALUE -e HTTPS=$DOCKER_ENV2_VALUE --name $IMAGE_REPO_NAME $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$IMAGE_REPO_NAME:$IMAGE_TAG